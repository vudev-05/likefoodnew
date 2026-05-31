/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * AI Chat SSE Stream API — OPTIMIZED VERSION
 * 
 * TỐI ƯU CHO:
 * - Latency thấp nhất (parallel queries, early response)
 * - Data đầy đủ nhất (products, orders, reviews, blog, etc.)
 * - Streaming real-time cho UX mượt mà
 * 
 * Copyright (c) 2026 LIKEFOOD Team
 */

import { NextRequest, NextResponse } from "next/server";
import { logger } from "@/lib/logger";
import { trackChatbotMessage } from "@/lib/analytics/behavior";
import { applyRateLimit, apiRateLimit, getRateLimitIdentifier } from "@/lib/ratelimit";
import { buildUltimateAIContext } from "@/lib/ai/ultimate-data-reader";
import { callGPTStream } from "@/lib/ai/ai-provider";
import { detectLanguage } from "@/lib/text-utils";

export const runtime = "nodejs";
export const dynamic = "force-dynamic";

// ─── Config ──────────────────────────────────────────────────
const AI_CHAT_WINDOW_MS = 60 * 60 * 1000;
const AI_CHAT_MAX_REQUESTS = 25;

// ─── Helpers ─────────────────────────────────────────────────

function generateSessionId(): string {
  return `session_${Date.now()}_${Math.random().toString(36).slice(2, 11)}`;
}

function createSSEChunk(type: string, data: unknown): string {
  return `event: ${type}\ndata: ${JSON.stringify(data)}\n\n`;
}

// ─── Main POST Handler ──────────────────────────────────────

export async function POST(req: NextRequest) {
  const startTime = Date.now();
  let chatSessionId = generateSessionId();

  try {
    // Rate limiting
    const identifier = getRateLimitIdentifier(req);
    const rateLimitResult = await applyRateLimit(identifier, apiRateLimit, {
      windowMs: AI_CHAT_WINDOW_MS,
      maxRequests: AI_CHAT_MAX_REQUESTS,
    });

    if (!rateLimitResult.success) {
      return new Response(
        createSSEChunk("error", { message: "Too many requests. Please try again later." }),
        {
          status: 429,
          headers: {
            "Content-Type": "text/event-stream",
            "Cache-Control": "no-cache",
            Connection: "keep-alive",
          },
        }
      );
    }

    // Parse body
    let body;
    try {
      body = await req.json();
    } catch {
      body = {};
    }
    
    const { message, sessionId, userId, messages: msgArray, history } = body ?? {};
    let chatMessage = message;

    chatSessionId = typeof sessionId === "string" && sessionId.trim() 
      ? sessionId.trim() 
      : generateSessionId();

    // Support both "message" and "messages" array formats
    if (!chatMessage && Array.isArray(msgArray) && msgArray.length > 0) {
      const lastMessage = msgArray[msgArray.length - 1];
      chatMessage = typeof lastMessage?.content === "string" ? lastMessage.content : "";
    }

    // Handle history format (from frontend)
    if (!chatMessage && Array.isArray(history) && history.length > 0) {
      const lastHistory = history[history.length - 1];
      chatMessage = typeof lastHistory?.content === "string" ? lastHistory.content : "";
    }

    // Validate message
    if (!chatMessage || typeof chatMessage !== "string") {
      return new Response(
        createSSEChunk("error", { message: "Invalid message. Please send a valid message." }),
        {
          status: 400,
          headers: {
            "Content-Type": "text/event-stream",
            "Cache-Control": "no-cache",
            Connection: "keep-alive",
          },
        }
      );
    }

    const trimmedMessage = chatMessage.trim();
    if (trimmedMessage.length === 0) {
      return new Response(
        createSSEChunk("error", { message: "Message cannot be empty." }),
        {
          status: 400,
          headers: {
            "Content-Type": "text/event-stream",
            "Cache-Control": "no-cache",
            Connection: "keep-alive",
          },
        }
      );
    }

    if (trimmedMessage.length > 2000) {
      return new Response(
        createSSEChunk("error", { message: "Tin nhắn không được quá 2000 ký tự." }),
        {
          status: 400,
          headers: {
            "Content-Type": "text/event-stream",
            "Cache-Control": "no-cache",
            Connection: "keep-alive",
          },
        }
      );
    }

    const language = detectLanguage(trimmedMessage);

    // Build conversation history
    let conversationHistory = "";
    if (Array.isArray(history) && history.length > 0) {
      conversationHistory = history.slice(-10).map((msg: { role: string; content: string }) => {
        const role = msg.role === "model" ? "assistant" : msg.role;
        if (role === "user" || role === "assistant") {
          return `${role}: ${typeof msg.content === "string" ? msg.content.slice(0, 800) : ""}`;
        }
        return "";
      }).filter(Boolean).join("\n");
    }

    // Create streaming response
    const encoder = new TextEncoder();
    const stream = new ReadableStream({
      async start(controller) {
        try {
          // 1. Send session info
          controller.enqueue(encoder.encode(createSSEChunk("session", { sessionId: chatSessionId })));

          // 2. Send "thinking" indicator
          const thinkingMsg = language === "vi" 
            ? "🤔 LIKEFOOD AI đang tìm kiếm thông tin..." 
            : "🔍 LIKEFOOD AI is searching for information...";
          controller.enqueue(encoder.encode(createSSEChunk("thinking", { message: thinkingMsg })));

          // 3. Build ULTIMATE context với tất cả data (parallel fetch)
          let sqlContext = "";
          try {
            const contextStart = Date.now();
            sqlContext = await buildUltimateAIContext(trimmedMessage, userId ? Number(userId) : undefined);
            logger.info(`[AI_CHAT] Context built in ${Date.now() - contextStart}ms`);
          } catch (ctxErr) {
            logger.error("[AI_CHAT_SSE] SQL context error", ctxErr as Error, { context: "ai-chat-sse" });
          }

          // 4. Build optimized system prompt
          const systemPrompt = buildUltimatePrompt(language, sqlContext, conversationHistory, trimmedMessage);

          // 5. Stream AI response
          let fullResponse = "";
          
          const streamResult = await callGPTStream(
            trimmedMessage,
            {
              systemMessage: systemPrompt,
              temperature: 0.7,
              maxTokens: 3000,
              topP: 0.9,
              frequencyPenalty: 0.1,
              presencePenalty: 0.1,
            },
            {
              onChunk: (chunk) => {
                fullResponse += chunk;
                
                // Send accumulated content for smooth streaming
                controller.enqueue(encoder.encode(createSSEChunk("chunk", { 
                  content: fullResponse
                })));
              },
            }
          );

          // 6. Send final complete message
          controller.enqueue(encoder.encode(createSSEChunk("done", {
            response: fullResponse,
            content: fullResponse,
            role: "model",
            intent: "AI_CHAT_ULTIMATE",
            confidence: 1,
            language,
            sessionId: chatSessionId,
            source: "chatgpt-ultimate",
            model: streamResult?.model ?? "gpt-4o",
            tokens: streamResult?.usage?.total_tokens,
            latencyMs: Date.now() - startTime,
          })));

          // 7. Analytics (non-blocking)
          trackChatbotMessage(chatSessionId, userId, trimmedMessage, "AI_CHAT_ULTIMATE", fullResponse).catch(() => {});

          logger.info(`[AI_CHAT] Complete in ${Date.now() - startTime}ms`);

        } catch (error) {
          logger.error("[AI_CHAT_SSE] Stream error", error as Error, { context: "ai-chat-sse" });
          controller.enqueue(encoder.encode(createSSEChunk("error", {
            message: language === "vi" 
              ? "Xin lỗi, đã có lỗi xảy ra. Vui lòng thử lại sau nhé!" 
              : "Sorry, an error occurred. Please try again later!",
          })));
        } finally {
          controller.close();
        }
      },
    });

    return new NextResponse(stream, {
      headers: {
        "Content-Type": "text/event-stream",
        "Cache-Control": "no-cache",
        Connection: "keep-alive",
        "X-Accel-Buffering": "no",
      },
    });

  } catch (error) {
    logger.error("[AI_CHAT_SSE] Critical error", error as Error, { context: "ai-chat-sse" });
    return new Response(
      createSSEChunk("error", { 
        message: "Mình đang xử lý, bạn thử gửi lại nhé! 😊" 
      }),
      {
        status: 500,
        headers: {
          "Content-Type": "text/event-stream",
          "Cache-Control": "no-cache",
          Connection: "keep-alive",
        },
      }
    );
  }
}

// ─── Ultimate System Prompt Builder ─────────────────────────────────

function buildUltimatePrompt(
  language: "vi" | "en",
  sqlContext: string,
  conversationHistory: string,
  currentMessage: string
): string {
  const isVietnamese = language === "vi";

  const basePrompt = isVietnamese
    ? `Bạn là **LIKEFOOD AI** — trợ lý tư vấn ẩm thực thông minh tại siêu thị đặc sản Việt Nam.
🎯 PHONG CÁCH LÀM VIỆC:
- Xưng "em" hoặc "mình" với khách, gọi "bạn/anh/chị" — lịch sự, thân thiện và tự nhiên.
- TRẢ LỜI NGẮN GỌN, TRỰC TIẾP VÀO TRỌNG TÂM (Khoảng 2-4 câu). Không trình bày lan man.
- LUÔN LUÔN ghi nhớ ngữ cảnh từ [CONVERSATION HISTORY]. Nếu khách nói "lấy cái đó", "ok", "tư vấn thêm", phải dựa vào câu trước để hiểu.

📝 QUẢN LÝ THÔNG TIN:
- LUÔN dùng dữ liệu THẬT từ phần [DATABASE] bên dưới.
- [DATABASE] chứa các sản phẩm bán chạy và các sản phẩm khớp với từ khóa tìm kiếm của khách.
- Nếu khách hỏi một sản phẩm KHÔNG CÓ trong [DATABASE], hãy nói: "Dạ hiện tại bên em chưa có thông tin về sản phẩm này. Anh/chị có muốn tham khảo các đặc sản bán chạy khác của LIKEFOOD không ạ?"
- TUYỆT ĐỐI KHÔNG BỊA ĐẶT thông tin, giá cả, hoặc sản phẩm không có thật.`
    : `You are **LIKEFOOD AI** — a smart shopping assistant at a Vietnamese specialty supermarket.
🎯 WORK STYLE:
- Polite, warm, and natural.
- Answer DIRECTLY and CONCISELY (2-4 sentences). Do NOT be overly verbose.
- ALWAYS remember the context from [CONVERSATION HISTORY]. Understand pronouns and follow-up requests.

📝 INFORMATION MANAGEMENT:
- ALWAYS use REAL data from the [DATABASE] below.
- If a user asks for a product NOT in the [DATABASE], politely say you don't have it and offer other best sellers.
- NEVER hallucinate products, prices, or policies.`;

  const historySection = conversationHistory
    ? `\n\n📜 CONVERSATION HISTORY (Ngữ cảnh cuộc hội thoại):\n${conversationHistory}`
    : "\n\n📜 CONVERSATION HISTORY: Mới bắt đầu.";

  const databaseSection = `\n\n[📦 DATABASE - CƠ SỞ DỮ LIỆU THỰC TẾ]\n${sqlContext || "(No data available)"}`;

  const currentQuestion = `\n\n💬 CÂU HỎI HIỆN TẠI TỪ KHÁCH HÀNG: ${currentMessage}`;

  return [basePrompt, historySection, databaseSection, currentQuestion].join("");
}

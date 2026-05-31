"use client";

import PostForm from "@/components/admin/PostForm";
import { useEffect, useState } from "react";
import { Loader2 } from "lucide-react";
import { useParams } from "next/navigation";
import Link from "next/link";

export default function EditPostPage() {
    const { id } = useParams<{ id: string }>();
    const [post, setPost] = useState<any>(null);
    const [isLoading, setIsLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        if (!id) {
            setError("Không tìm thấy ID bài viết trong URL");
            setIsLoading(false);
            return;
        }

        const controller = new AbortController();

        (async () => {
            try {
                const res = await fetch(`/api/admin/posts/${id}`, {
                    signal: controller.signal,
                    credentials: "same-origin",
                });

                if (!res.ok) {
                    const errData = await res.json().catch(() => ({}));
                    setError(errData.error || `Lỗi ${res.status}: Không thể tải bài viết`);
                    return;
                }

                const data = await res.json();

                if (!data || !data.id) {
                    setError("Dữ liệu bài viết không hợp lệ (thiếu ID)");
                    return;
                }

                setPost(data);
            } catch (err: any) {
                if (err.name !== "AbortError") {
                    console.error("Fetch post error:", err);
                    setError("Lỗi kết nối máy chủ");
                }
            } finally {
                setIsLoading(false);
            }
        })();

        return () => controller.abort();
    }, [id]);

    if (isLoading) {
        return (
            <div className="h-96 flex items-center justify-center">
                <Loader2 className="w-10 h-10 animate-spin text-emerald-500" />
            </div>
        );
    }

    if (error || !post) {
        return (
            <div className="space-y-4 mt-8">
                <div className="h-96 flex flex-col items-center justify-center text-slate-500 font-bold bg-slate-50 rounded-3xl border border-slate-200 gap-4">
                    <p className="text-red-600 text-lg">{error || "Không tìm thấy bài viết"}</p>
                    <p className="text-slate-400 text-sm">Post ID: {id}</p>
                    <Link href="/admin/posts" className="mt-4 px-6 py-2 bg-slate-100 rounded-xl text-slate-700 hover:bg-zinc-600 transition-colors text-sm font-medium">
                        ← Quay lại danh sách
                    </Link>
                </div>
            </div>
        );
    }

    return <PostForm key={`edit-post-${post.id}`} initialData={post} />;
}

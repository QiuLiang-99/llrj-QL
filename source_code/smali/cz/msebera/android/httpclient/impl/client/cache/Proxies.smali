.class Lcz/msebera/android/httpclient/impl/client/cache/Proxies;
.super Ljava/lang/Object;
.source "Proxies.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4
    .param p0, "original"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 45
    const-string v0, "HTTP response"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    instance-of v0, p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 49
    .end local p0    # "original":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_0
    return-object p0

    .restart local p0    # "original":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_0
    const-class v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;

    invoke-direct {v2, p0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 49
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-object p0, v0

    goto :goto_0
.end method

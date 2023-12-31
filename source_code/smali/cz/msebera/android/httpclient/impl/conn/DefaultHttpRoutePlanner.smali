.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 1
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 79
    return-void
.end method


# virtual methods
.method public determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 9
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v7, "HTTP request"

    invoke-static {p2, v7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v3

    .line 91
    .local v3, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 120
    .end local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .local v4, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :goto_0
    return-object v4

    .line 98
    .end local v4    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :cond_0
    const-string v7, "Target host"

    invoke-static {p1, v7}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 103
    .local v1, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 107
    .local v2, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :try_start_0
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 113
    .local v5, "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->isLayered()Z

    move-result v6

    .line 115
    .local v6, "secure":Z
    if-nez v2, :cond_1

    .line 116
    new-instance v3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .end local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-direct {v3, p1, v1, v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V

    .restart local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :goto_1
    move-object v4, v3

    .line 120
    .end local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v4    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto :goto_0

    .line 108
    .end local v4    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v5    # "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .end local v6    # "secure":Z
    .restart local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v7, Lcz/msebera/android/httpclient/HttpException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    .restart local v5    # "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .restart local v6    # "secure":Z
    :cond_1
    new-instance v3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .end local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-direct {v3, p1, v1, v2, v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    .restart local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto :goto_1
.end method

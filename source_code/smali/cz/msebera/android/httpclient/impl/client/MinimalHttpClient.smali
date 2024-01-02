.class Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "MinimalHttpClient.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 4
    .param p1, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .prologue
    .line 74
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 75
    const-string v0, "HTTP connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 76
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    sget-object v2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    sget-object v3, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0, v1, p1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    .line 81
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    .prologue
    .line 66
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    .line 121
    return-void
.end method

.method protected doExecute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v6, "Target host"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    const-string v6, "HTTP request"

    invoke-static {p2, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    instance-of v6, p2, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 93
    check-cast v1, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 96
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v5

    .line 97
    .local v5, "wrapper":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    if-eqz p3, :cond_3

    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :goto_0
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v3

    .line 99
    .local v3, "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    new-instance v4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v4, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 100
    .local v4, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    const/4 v0, 0x0

    .line 101
    .local v0, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    instance-of v6, p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v6, :cond_1

    .line 102
    check-cast p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    .line 107
    :cond_2
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    invoke-virtual {v6, v4, v5, v3, v1}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v6

    return-object v6

    .line 97
    .end local v0    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v3    # "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local v4    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_3
    new-instance p3, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v5    # "wrapper":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "httpException":Lcz/msebera/android/httpclient/HttpException;
    new-instance v6, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v6, v2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;-><init>(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

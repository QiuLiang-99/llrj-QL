.class public Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field private final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V
    .locals 2
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .param p2, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p3, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 82
    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "HTTP route planner"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const-string v0, "HTTP redirect strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 86
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 87
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 88
    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 22
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .param p3, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .param p4, "execAware"    # Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v19, "HTTP route"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v19, "HTTP request"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v19, "HTTP context"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v15

    .line 101
    .local v15, "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    if-eqz v15, :cond_0

    .line 102
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 105
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v4

    .line 106
    .local v4, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getMaxRedirects()I

    move-result v19

    if-lez v19, :cond_1

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getMaxRedirects()I

    move-result v9

    .line 107
    .local v9, "maxRedirects":I
    :goto_0
    move-object/from16 v6, p1

    .line 108
    .local v6, "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    move-object/from16 v5, p2

    .line 109
    .local v5, "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    const/4 v14, 0x0

    .line 110
    .local v14, "redirectCount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v6, v5, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    .line 113
    .local v16, "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_start_0
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v19, v0

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v5, v1, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 116
    if-lt v14, v9, :cond_2

    .line 117
    new-instance v19, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Maximum redirects ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") exceeded"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 168
    throw v7

    .line 106
    .end local v5    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local v6    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .end local v9    # "maxRedirects":I
    .end local v14    # "redirectCount":I
    .end local v16    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :cond_1
    const/16 v9, 0x32

    goto :goto_0

    .line 119
    .restart local v5    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local v6    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v9    # "maxRedirects":I
    .restart local v14    # "redirectCount":I
    .restart local v16    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 121
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v5, v1, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v13

    .line 123
    .local v13, "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v13}, Lcz/msebera/android/httpclient/HttpRequest;->headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v11

    .line 125
    .local v11, "original":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcz/msebera/android/httpclient/HttpRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 127
    .end local v11    # "original":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_3
    invoke-static {v13}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v5

    .line 129
    instance-of v0, v5, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 130
    move-object v0, v5

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 133
    :cond_4
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v18

    .line 134
    .local v18, "uri":Ljava/net/URI;
    invoke-static/range {v18 .. v18}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v10

    .line 135
    .local v10, "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v10, :cond_5

    .line 136
    new-instance v19, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Redirect URI does not specify a valid host name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    .end local v10    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    .end local v13    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v18    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v7

    .line 170
    .local v7, "ex":Ljava/io/IOException;
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 171
    throw v7

    .line 141
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v10    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v13    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v17

    .line 143
    .local v17, "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v17, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v20, "Resetting target auth state"

    invoke-virtual/range {v19 .. v20}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 145
    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 147
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v12

    .line 148
    .local v12, "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v12, :cond_7

    .line 149
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v3

    .line 150
    .local v3, "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v20, "Resetting proxy auth state"

    invoke-virtual/range {v19 .. v20}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 157
    .end local v3    # "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    .end local v12    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v17    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v10, v5, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v6

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Redirecting to \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' via "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 161
    :cond_8
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 162
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 172
    .end local v10    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    .end local v13    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v18    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v7

    .line 176
    .local v7, "ex":Lcz/msebera/android/httpclient/HttpException;
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 182
    :goto_2
    throw v7

    .line 177
    :catch_3
    move-exception v8

    .line 178
    .local v8, "ioex":Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v20, "I/O error while releasing connection"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    goto :goto_2

    .end local v8    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v19

    .line 164
    .end local v7    # "ex":Lcz/msebera/android/httpclient/HttpException;
    :cond_9
    return-object v16
.end method

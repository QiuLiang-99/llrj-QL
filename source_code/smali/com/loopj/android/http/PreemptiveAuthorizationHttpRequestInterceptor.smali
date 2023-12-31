.class public Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "PreemptiveAuthorizationHttpRequestInterceptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 40
    .local v1, "authState":Lcz/msebera/android/httpclient/auth/AuthState;
    const-string v5, "http.auth.credentials-provider"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 42
    .local v3, "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpHost;

    .line 44
    .local v4, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v5

    if-nez v5, :cond_0

    .line 45
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v0, "authScope":Lcz/msebera/android/httpclient/auth/AuthScope;
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v2

    .line 47
    .local v2, "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    if-eqz v2, :cond_0

    .line 48
    new-instance v5, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v1, v5}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 49
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 52
    .end local v0    # "authScope":Lcz/msebera/android/httpclient/auth/AuthScope;
    .end local v2    # "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    :cond_0
    return-void
.end method

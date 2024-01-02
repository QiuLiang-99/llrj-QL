.class public Lcz/msebera/android/httpclient/client/params/ClientParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "ClientParamBean.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 53
    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 77
    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "factory"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 61
    return-void
.end method

.method public setConnectionManagerTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 104
    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 85
    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "headers":Ljava/util/Collection;, "Ljava/util/Collection<Lcz/msebera/android/httpclient/Header;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.default-headers"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 93
    return-void
.end method

.method public setDefaultHost(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;

    .prologue
    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.default-host"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 97
    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2
    .param p1, "handle"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 81
    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2
    .param p1, "handle"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 65
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2
    .param p1, "maxRedirects"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 73
    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2
    .param p1, "reject"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 69
    return-void
.end method

.method public setVirtualHost(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;

    .prologue
    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/params/ClientParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.virtual-host"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 89
    return-void
.end method

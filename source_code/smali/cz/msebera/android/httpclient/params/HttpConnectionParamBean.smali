.class public Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 45
    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 65
    return-void
.end method

.method public setLinger(I)V
    .locals 1
    .param p1, "linger"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setLinger(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 61
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "soTimeout"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 49
    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 1
    .param p1, "socketBufferSize"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSocketBufferSize(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 57
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "staleCheckingEnabled"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 69
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 53
    return-void
.end method

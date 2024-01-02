.class Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;
.super Ljava/lang/Object;
.source "CPoolProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)V
    .locals 0
    .param p1, "entry"    # Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 56
    return-void
.end method

.method public static detach(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 1
    .param p0, "conn"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .prologue
    .line 266
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getProxy(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->detach()Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getPoolEntry(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 2
    .param p0, "proxy"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .prologue
    .line 258
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getProxy(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object v0

    .line 259
    .local v0, "entry":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    if-nez v0, :cond_0

    .line 260
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    .line 262
    :cond_0
    return-object v0
.end method

.method private static getProxy(Lcz/msebera/android/httpclient/HttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;
    .locals 3
    .param p0, "conn"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .prologue
    .line 251
    const-class v0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected connection proxy class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const-class v0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    return-object v0
.end method

.method public static newProxy(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .locals 1
    .param p0, "poolEntry"    # Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .prologue
    .line 247
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;-><init>(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)V

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 138
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 87
    .local v0, "local":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->closeConnection()V

    .line 90
    :cond_0
    return-void
.end method

.method detach()Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 64
    .local v0, "local":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 65
    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->flush()V

    .line 178
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 208
    .local v0, "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .end local v0    # "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .restart local v0    # "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 70
    .local v0, "local":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 78
    .local v0, "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    .line 81
    :cond_0
    return-object v0
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 103
    .local v0, "local":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 106
    :cond_0
    return v1
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 113
    .local v0, "conn":Lcz/msebera/android/httpclient/HttpClientConnection;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isStale()Z

    move-result v1

    .line 116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 173
    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 226
    .local v0, "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .end local v0    # "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    .restart local v0    # "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 163
    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 158
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 218
    .local v0, "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .end local v0    # "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getValidConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->setSocketTimeout(I)V

    .line 123
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    .line 95
    .local v0, "local":Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->shutdownConnection()V

    .line 98
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CPoolProxy{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolProxy;->getConnection()Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 237
    .local v0, "conn":Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :goto_0
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 240
    :cond_0
    const-string v2, "detached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

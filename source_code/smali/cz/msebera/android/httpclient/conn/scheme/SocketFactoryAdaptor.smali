.class Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .locals 0
    .param p1, "factory"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-nez p4, :cond_0

    if-lez p5, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/InetSocketAddress;
    if-lez p5, :cond_2

    .end local p5    # "localPort":I
    :goto_0
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 66
    .restart local v0    # "local":Ljava/net/InetSocketAddress;
    :cond_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 67
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    .local v1, "remote":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v3, p1, v1, v0, p6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3

    .line 64
    .end local v0    # "local":Ljava/net/InetSocketAddress;
    .end local v1    # "remote":Ljava/net/InetSocketAddress;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    .restart local p5    # "localPort":I
    :cond_2
    const/4 p5, 0x0

    goto :goto_0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 53
    .local v0, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 91
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 85
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p0, p1, :cond_1

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 91
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

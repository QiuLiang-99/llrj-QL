.class public final Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 13
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v10, "Target host"

    invoke-static {p2, v10}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string v10, "HTTP parameters"

    move-object/from16 v0, p6

    invoke-static {v0, v10}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-object v8, p1

    .line 113
    .local v8, "sock":Ljava/net/Socket;
    if-nez v8, :cond_0

    .line 114
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v8

    .line 117
    :cond_0
    if-nez p4, :cond_1

    if-lez p5, :cond_2

    .line 118
    :cond_1
    new-instance v5, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_4

    .end local p5    # "localPort":I
    :goto_0
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 120
    .local v5, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v8, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 123
    .end local v5    # "isa":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-static/range {p6 .. p6}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v9

    .line 125
    .local v9, "timeout":I
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 126
    .local v4, "inetadrs":[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/ArrayList;

    array-length v10, v4

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 130
    const/4 v6, 0x0

    .line 131
    .local v6, "lastEx":Ljava/io/IOException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 133
    .local v7, "remoteAddress":Ljava/net/InetAddress;
    :try_start_0
    new-instance v11, Ljava/net/InetSocketAddress;

    move/from16 v0, p3

    invoke-direct {v11, v7, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v11, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v7    # "remoteAddress":Ljava/net/InetAddress;
    :cond_3
    if-eqz v6, :cond_5

    .line 145
    throw v6

    .line 118
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4    # "inetadrs":[Ljava/net/InetAddress;
    .end local v6    # "lastEx":Ljava/io/IOException;
    .end local v9    # "timeout":I
    .restart local p5    # "localPort":I
    :cond_4
    const/16 p5, 0x0

    goto :goto_0

    .line 135
    .end local p5    # "localPort":I
    .restart local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "inetadrs":[Ljava/net/InetAddress;
    .restart local v6    # "lastEx":Ljava/io/IOException;
    .restart local v7    # "remoteAddress":Ljava/net/InetAddress;
    .restart local v9    # "timeout":I
    :catch_0
    move-exception v3

    .line 136
    .local v3, "ex":Ljava/net/SocketTimeoutException;
    new-instance v10, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timed out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 137
    .end local v3    # "ex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 139
    .local v3, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/net/Socket;

    .end local v8    # "sock":Ljava/net/Socket;
    invoke-direct {v8}, Ljava/net/Socket;-><init>()V

    .line 141
    .restart local v8    # "sock":Ljava/net/Socket;
    move-object v6, v3

    .line 143
    goto :goto_1

    .line 147
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "remoteAddress":Ljava/net/InetAddress;
    :cond_5
    return-object v8
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 3
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Socket is closed"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 169
    return v1

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0
.end method

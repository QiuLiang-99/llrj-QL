.class public Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
.super Ljava/lang/Object;
.source "ServerBootstrap.java"


# instance fields
.field private connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private listenerPort:I

.field private localAddress:Ljava/net/InetAddress;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private serverInfo:Ljava/lang/String;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static bootstrap()Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-object p0

    .line 181
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    .line 184
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-object p0

    .line 147
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    .line 150
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-object p0

    .line 198
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    .line 201
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-object p0

    .line 164
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    .line 167
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public create()Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
    .locals 20

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 316
    .local v2, "httpProcessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    if-nez v2, :cond_5

    .line 318
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v15

    .line 319
    .local v15, "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 321
    .local v17, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_0

    .line 324
    .end local v17    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 326
    .local v17, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_1

    .line 330
    .end local v17    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 331
    .local v19, "serverInfoCopy":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 332
    const-string v19, "Apache-HttpCore/1.1"

    .line 335
    :cond_2
    const/4 v6, 0x4

    new-array v6, v6, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    const/4 v7, 0x0

    new-instance v8, Lcz/msebera/android/httpclient/protocol/ResponseDate;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/protocol/ResponseDate;-><init>()V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcz/msebera/android/httpclient/protocol/ResponseServer;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcz/msebera/android/httpclient/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lcz/msebera/android/httpclient/protocol/ResponseContent;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/protocol/ResponseContent;-><init>()V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;-><init>()V

    aput-object v8, v6, v7

    invoke-virtual {v15, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 340
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 342
    .local v17, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_2

    .line 345
    .end local v17    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 347
    .local v17, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_3

    .line 350
    .end local v17    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :cond_4
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v2

    .line 353
    .end local v15    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .end local v19    # "serverInfoCopy":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 354
    .local v5, "handlerMapperCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;
    if-nez v5, :cond_7

    .line 355
    new-instance v18, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;

    invoke-direct/range {v18 .. v18}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;-><init>()V

    .line 356
    .local v18, "reqistry":Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-eqz v6, :cond_6

    .line 357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 358
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)V

    goto :goto_4

    .line 361
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;>;"
    :cond_6
    move-object/from16 v5, v18

    .line 364
    .end local v18    # "reqistry":Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 365
    .local v3, "connStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    if-nez v3, :cond_8

    .line 366
    sget-object v3, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    .line 369
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 370
    .local v4, "responseFactoryCopy":Lcz/msebera/android/httpclient/HttpResponseFactory;
    if-nez v4, :cond_9

    .line 371
    sget-object v4, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    .line 374
    :cond_9
    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    .line 378
    .local v1, "httpService":Lcz/msebera/android/httpclient/protocol/HttpService;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 379
    .local v10, "serverSocketFactoryCopy":Ljavax/net/ServerSocketFactory;
    if-nez v10, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_d

    .line 381
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v10

    .line 387
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    .line 388
    .local v12, "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    if-nez v12, :cond_b

    .line 389
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v6, :cond_e

    .line 390
    new-instance v12, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    .end local v12    # "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-direct {v12, v6}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    .line 396
    .restart local v12    # "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 397
    .local v14, "exceptionLoggerCopy":Lcz/msebera/android/httpclient/ExceptionLogger;
    if-nez v14, :cond_c

    .line 398
    sget-object v14, Lcz/msebera/android/httpclient/ExceptionLogger;->NO_OP:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 401
    :cond_c
    new-instance v6, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;

    move-object/from16 v0, p0

    iget v7, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    if-lez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    move-object v11, v1

    invoke-direct/range {v6 .. v14}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;-><init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V

    return-object v6

    .line 383
    .end local v12    # "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    .end local v14    # "exceptionLoggerCopy":Lcz/msebera/android/httpclient/ExceptionLogger;
    :cond_d
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v10

    goto :goto_5

    .line 392
    .restart local v12    # "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    :cond_e
    sget-object v12, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    goto :goto_6

    .line 401
    .restart local v14    # "exceptionLoggerCopy":Lcz/msebera/android/httpclient/ExceptionLogger;
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    :cond_10
    sget-object v9, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    goto :goto_8
.end method

.method public final registerHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object p0

    .line 254
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    .line 257
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "connectionConfig"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .prologue
    .line 125
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 126
    return-object p0
.end method

.method public final setConnectionFactory(Lcz/msebera/android/httpclient/HttpConnectionFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "connectionFactory":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    .line 275
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "connStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .prologue
    .line 220
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 221
    return-object p0
.end method

.method public final setExceptionLogger(Lcz/msebera/android/httpclient/ExceptionLogger;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "exceptionLogger"    # Lcz/msebera/android/httpclient/ExceptionLogger;

    .prologue
    .line 309
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 310
    return-object p0
.end method

.method public final setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "expectationVerifier"    # Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .prologue
    .line 265
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .line 266
    return-object p0
.end method

.method public final setHandlerMapper(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "handlerMapper"    # Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .prologue
    .line 236
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 237
    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .prologue
    .line 133
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 134
    return-object p0
.end method

.method public final setListenerPort(I)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "listenerPort"    # I

    .prologue
    .line 98
    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    .line 99
    return-object p0
.end method

.method public final setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 106
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    .line 107
    return-object p0
.end method

.method public final setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;

    .prologue
    .line 228
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 229
    return-object p0
.end method

.method public final setServerInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "serverInfo"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public final setServerSocketFactory(Ljavax/net/ServerSocketFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "serverSocketFactory"    # Ljavax/net/ServerSocketFactory;

    .prologue
    .line 290
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 291
    return-object p0
.end method

.method public final setSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "socketConfig"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .prologue
    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 115
    return-object p0
.end method

.method public final setSslContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 301
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 302
    return-object p0
.end method

.method public final setSslSetupHandler(Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "sslSetupHandler"    # Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    .prologue
    .line 282
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    .line 283
    return-object p0
.end method

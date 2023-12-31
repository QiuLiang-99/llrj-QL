.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connTimeToLive:J

.field private connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private maxIdleTime:J

.field private maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

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

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

.field private sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 214
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 216
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 217
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 229
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    const/4 v0, 0x0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 863
    if-nez p1, :cond_0

    .line 870
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 869
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 543
    :goto_0
    return-object p0

    .line 539
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 542
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-object p0

    .line 504
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 505
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 507
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 560
    :goto_0
    return-object p0

    .line 556
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 557
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 559
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-object p0

    .line 522
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 523
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 525
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 52

    .prologue
    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-object/from16 v37, v0

    .line 883
    .local v37, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    if-nez v37, :cond_0

    .line 884
    invoke-static {}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v37

    .line 887
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v39, v0

    .line 888
    .local v39, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    if-nez v39, :cond_1

    .line 889
    new-instance v39, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .end local v39    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    invoke-direct/range {v39 .. v39}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    .line 891
    .restart local v39    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 892
    .local v8, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    if-nez v8, :cond_9

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    move-object/from16 v44, v0

    .line 894
    .local v44, "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    if-nez v44, :cond_3

    .line 895
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_11

    const-string v6, "https.protocols"

    .line 896
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 895
    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .line 897
    .local v47, "supportedProtocols":[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_12

    const-string v6, "https.cipherSuites"

    .line 898
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 897
    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v46

    .line 899
    .local v46, "supportedCipherSuites":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v32, v0

    .line 900
    .local v32, "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    if-nez v32, :cond_2

    .line 901
    new-instance v32, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;

    .end local v32    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 903
    .restart local v32    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_13

    .line 904
    new-instance v44, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .end local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v32

    invoke-direct {v0, v6, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    .line 919
    .end local v32    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    .end local v46    # "supportedCipherSuites":[Ljava/lang/String;
    .end local v47    # "supportedProtocols":[Ljava/lang/String;
    .restart local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    :cond_3
    :goto_2
    new-instance v5, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    .line 920
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "http"

    .line 921
    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "https"

    .line 922
    move-object/from16 v0, v44

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 923
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .end local v8    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    :goto_3
    invoke-direct/range {v5 .. v12}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    .line 929
    .local v5, "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v6, :cond_4

    .line 930
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    .line 932
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v6, :cond_5

    .line 933
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    .line 935
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_6

    .line 936
    const-string v6, "http.keepAlive"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 937
    .local v41, "s":Ljava/lang/String;
    const-string v6, "true"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 938
    const-string v6, "http.maxConnections"

    const-string v7, "5"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 939
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 940
    .local v36, "max":I
    move/from16 v0, v36

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 941
    mul-int/lit8 v6, v36, 0x2

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 944
    .end local v36    # "max":I
    .end local v41    # "s":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v6, :cond_7

    .line 945
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 947
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v6, :cond_8

    .line 948
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 950
    :cond_8
    move-object v8, v5

    .line 952
    .end local v5    # "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    .end local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    .restart local v8    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 953
    .local v9, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    if-nez v9, :cond_a

    .line 954
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_17

    .line 955
    const-string v6, "http.keepAlive"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 956
    .restart local v41    # "s":Ljava/lang/String;
    const-string v6, "true"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 957
    sget-object v9, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    .line 965
    .end local v41    # "s":Ljava/lang/String;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 966
    .local v10, "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    if-nez v10, :cond_b

    .line 967
    sget-object v10, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    .line 969
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 970
    .local v12, "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v12, :cond_c

    .line 971
    sget-object v12, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    .line 973
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 974
    .local v13, "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v13, :cond_d

    .line 975
    sget-object v13, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    .line 977
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 978
    .local v14, "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    if-nez v14, :cond_e

    .line 979
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v6, :cond_18

    .line 980
    sget-object v14, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    .line 986
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 987
    .local v48, "userAgentCopy":Ljava/lang/String;
    if-nez v48, :cond_10

    .line 988
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_f

    .line 989
    const-string v6, "http.agent"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 991
    :cond_f
    if-nez v48, :cond_10

    .line 992
    const-string v6, "Apache-HttpClient"

    const-string v7, "cz.msebera.android.httpclient.client"

    .line 993
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 992
    invoke-static {v6, v7, v11}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v48

    .line 997
    :cond_10
    new-instance v11, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v6, 0x2

    new-array v6, v6, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v7, 0x0

    new-instance v15, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v15}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v15, v6, v7

    const/4 v7, 0x1

    new-instance v15, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v15, v6, v7

    invoke-direct {v11, v6}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object/from16 v6, p0

    move-object/from16 v7, v39

    invoke-virtual/range {v6 .. v14}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    .line 1007
    .local v16, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v33, v0

    .line 1010
    .local v33, "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    if-nez v33, :cond_25

    .line 1012
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v4

    .line 1013
    .local v4, "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_19

    .line 1014
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1015
    .local v34, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_6

    .line 895
    .end local v4    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .end local v9    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .end local v10    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .end local v12    # "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .end local v13    # "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .end local v14    # "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .end local v33    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .end local v34    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .end local v48    # "userAgentCopy":Ljava/lang/String;
    .restart local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    :cond_11
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 897
    .restart local v47    # "supportedProtocols":[Ljava/lang/String;
    :cond_12
    const/16 v46, 0x0

    goto/16 :goto_1

    .line 907
    .restart local v32    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    .restart local v46    # "supportedCipherSuites":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_14

    .line 908
    new-instance v44, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 909
    .end local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    move-object/from16 v3, v32

    invoke-direct {v0, v6, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    .restart local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    goto/16 :goto_2

    .line 912
    :cond_14
    new-instance v44, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 913
    .end local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    invoke-static {}, Lcz/msebera/android/httpclient/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    .restart local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    goto/16 :goto_2

    .line 923
    .end local v8    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v32    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    .end local v46    # "supportedCipherSuites":[Ljava/lang/String;
    .end local v47    # "supportedProtocols":[Ljava/lang/String;
    :cond_15
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto/16 :goto_3

    .line 959
    .end local v44    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    .restart local v8    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v9    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .restart local v41    # "s":Ljava/lang/String;
    :cond_16
    sget-object v9, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    goto/16 :goto_4

    .line 962
    .end local v41    # "s":Ljava/lang/String;
    :cond_17
    sget-object v9, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    goto/16 :goto_4

    .line 982
    .restart local v10    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .restart local v12    # "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .restart local v13    # "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .restart local v14    # "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :cond_18
    sget-object v14, Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;

    goto/16 :goto_5

    .line 1018
    .restart local v4    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v33    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .restart local v48    # "userAgentCopy":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_1a

    .line 1019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1020
    .local v34, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_7

    .line 1023
    .end local v34    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :cond_1a
    const/4 v6, 0x6

    new-array v6, v6, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v7, 0x0

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v11, v15}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v11, v6, v7

    const/4 v7, 0x1

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x2

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x3

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x4

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    move-object/from16 v0, v48

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v11, v6, v7

    const/4 v7, 0x5

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;-><init>()V

    aput-object v11, v6, v7

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1030
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v6, :cond_1b

    .line 1031
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1033
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v6, :cond_1c

    .line 1034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v6, :cond_1f

    .line 1035
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1036
    .local v29, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1037
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    move-object/from16 v0, v29

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1042
    .end local v29    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v6, :cond_1d

    .line 1043
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1045
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v6, :cond_1e

    .line 1046
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1048
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v6, :cond_21

    .line 1049
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v6, :cond_22

    .line 1050
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v25

    .line 1051
    .local v25, "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    .line 1052
    .local v30, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    goto :goto_9

    .line 1039
    .end local v25    # "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    .end local v30    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    :cond_1f
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_8

    .line 1054
    .restart local v25    # "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    :cond_20
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-virtual/range {v25 .. v25}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1059
    .end local v25    # "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_23

    .line 1060
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1061
    .local v34, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_b

    .line 1056
    .end local v34    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    :cond_22
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_a

    .line 1064
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_24

    .line 1065
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1066
    .local v34, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_c

    .line 1069
    .end local v34    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :cond_24
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v33

    .line 1071
    .end local v4    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    :cond_25
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    .line 1073
    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .local v31, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    .line 1076
    .end local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v6, :cond_27

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-object/from16 v40, v0

    .line 1078
    .local v40, "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    if-nez v40, :cond_26

    .line 1079
    sget-object v40, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    .line 1081
    :cond_26
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v16, v31

    .line 1084
    .end local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .end local v40    # "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-object/from16 v18, v0

    .line 1085
    .local v18, "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    if-nez v18, :cond_29

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    move-object/from16 v42, v0

    .line 1087
    .local v42, "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    if-nez v42, :cond_28

    .line 1088
    sget-object v42, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    .line 1090
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v6, :cond_36

    .line 1091
    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;

    .end local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    .line 1100
    .end local v42    # "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    .restart local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :cond_29
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v6, :cond_2b

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v38, v0

    .line 1102
    .local v38, "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    if-nez v38, :cond_2a

    .line 1103
    sget-object v38, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    .line 1105
    :cond_2a
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V

    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v16, v31

    .line 1109
    .end local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .end local v38    # "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    move-object/from16 v43, v0

    .line 1110
    .local v43, "serviceUnavailStrategyCopy":Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;
    if-eqz v43, :cond_2c

    .line 1111
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v16, v31

    .line 1114
    .end local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    if-eqz v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    if-eqz v6, :cond_2d

    .line 1115
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V

    .end local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    move-object/from16 v16, v31

    .line 1118
    .end local v31    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .restart local v16    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    move-object/from16 v20, v0

    .line 1119
    .local v20, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    if-nez v20, :cond_2e

    .line 1120
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "Basic"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    .line 1121
    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "Digest"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    .line 1122
    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "NTLM"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    .line 1123
    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 1126
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v20

    .line 1128
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    move-object/from16 v19, v0

    .line 1129
    .local v19, "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    if-nez v19, :cond_2f

    .line 1130
    new-instance v28, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 1131
    .local v28, "defaultProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    new-instance v35, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 1133
    .local v35, "laxStandardProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    new-instance v45, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->STRICT:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 1135
    .local v45, "strictStandardProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "default"

    .line 1136
    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "best-match"

    .line 1137
    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "compatibility"

    .line 1138
    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "standard"

    .line 1139
    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "standard-strict"

    .line 1140
    move-object/from16 v0, v45

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "netscape"

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;-><init>()V

    .line 1141
    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "ignoreCookies"

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;-><init>()V

    .line 1142
    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 1143
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v19

    .line 1146
    .end local v28    # "defaultProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .end local v35    # "laxStandardProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .end local v45    # "strictStandardProvider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    move-object/from16 v21, v0

    .line 1147
    .local v21, "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    if-nez v21, :cond_30

    .line 1148
    new-instance v21, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    .end local v21    # "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    invoke-direct/range {v21 .. v21}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    .line 1151
    .restart local v21    # "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-object/from16 v22, v0

    .line 1152
    .local v22, "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    if-nez v22, :cond_31

    .line 1153
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_38

    .line 1154
    new-instance v22, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;

    .end local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    invoke-direct/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    .line 1160
    .restart local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :cond_31
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v6, :cond_39

    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1161
    .local v24, "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    if-nez v6, :cond_35

    .line 1162
    if-nez v24, :cond_32

    .line 1163
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1165
    .restart local v24    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :cond_32
    move-object/from16 v26, v8

    .line 1167
    .local v26, "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v6, :cond_33

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v6, :cond_34

    .line 1168
    :cond_33
    new-instance v27, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    const-wide/16 v50, 0x0

    cmp-long v6, v6, v50

    if-lez v6, :cond_3a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    :goto_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v11, :cond_3b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    :goto_11
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6, v7, v11}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;)V

    .line 1170
    .local v27, "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    invoke-virtual/range {v27 .. v27}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->start()V

    .line 1180
    .end local v27    # "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    :cond_34
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    .end local v26    # "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_35
    new-instance v15, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-object/from16 v23, v0

    :goto_12
    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v24}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V

    return-object v15

    .line 1092
    .end local v19    # "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .end local v20    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .end local v21    # "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    .end local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .end local v24    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .end local v43    # "serviceUnavailStrategyCopy":Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;
    .restart local v42    # "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_37

    .line 1093
    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;

    .line 1094
    .end local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v6}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    .restart local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    goto/16 :goto_d

    .line 1096
    :cond_37
    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;

    .end local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    .restart local v18    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    goto/16 :goto_d

    .line 1156
    .end local v42    # "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    .restart local v19    # "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .restart local v20    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .restart local v21    # "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    .restart local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .restart local v43    # "serviceUnavailStrategyCopy":Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;
    :cond_38
    new-instance v22, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    .end local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    invoke-direct/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    .restart local v22    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    goto/16 :goto_e

    .line 1160
    :cond_39
    const/16 v24, 0x0

    goto/16 :goto_f

    .line 1168
    .restart local v24    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .restart local v26    # "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_3a
    const-wide/16 v6, 0xa

    goto :goto_10

    :cond_3b
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_11

    .line 1190
    .end local v26    # "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_3c
    sget-object v23, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_12
.end method

.method protected createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 9
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "proxyHttpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p6, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p7, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p8, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .prologue
    .line 834
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-object v0
.end method

.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "mainExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .prologue
    .line 849
    return-object p1
.end method

.method protected decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "protocolExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .prologue
    .line 856
    return-object p1
.end method

.method public final disableAuthCaching()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    .line 593
    return-object p0
.end method

.method public final disableAutomaticRetries()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    .line 620
    return-object p0
.end method

.method public final disableConnectionState()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    .line 457
    return-object p0
.end method

.method public final disableContentCompression()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    .line 582
    return-object p0
.end method

.method public final disableCookieManagement()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    .line 571
    return-object p0
.end method

.method public final disableRedirectHandling()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    .line 659
    return-object p0
.end method

.method public final evictExpiredConnections()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    .line 780
    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 2
    .param p1, "maxIdleTime"    # Ljava/lang/Long;
    .param p2, "maxIdleTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    .line 808
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    .line 809
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 810
    return-object p0
.end method

.method public final setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "backoffManager"    # Lcz/msebera/android/httpclient/client/BackoffManager;

    .prologue
    .line 675
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 676
    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connectionBackoffStrategy"    # Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .prologue
    .line 667
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 668
    return-object p0
.end method

.method public final setConnectionManager(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .prologue
    .line 378
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 379
    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    .line 399
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .prologue
    .line 407
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 408
    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "connTimeToLive"    # J
    .param p3, "connTimeToLiveTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 368
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 369
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 370
    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "contentDecoderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    .line 738
    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "authSchemeRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 716
    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .prologue
    .line 354
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 355
    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "cookieSpecRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 727
    return-object p0
.end method

.method public final setDefaultCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "cookieStore"    # Lcz/msebera/android/httpclient/client/CookieStore;

    .prologue
    .line 693
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 694
    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "credentialsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .prologue
    .line 704
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 705
    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "defaultHeaders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcz/msebera/android/httpclient/Header;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    .line 490
    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .prologue
    .line 747
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 748
    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .prologue
    .line 342
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 343
    return-object p0
.end method

.method public final setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 252
    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "httpprocessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .prologue
    .line 600
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 601
    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .prologue
    .line 416
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 417
    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnPerRoute"    # I

    .prologue
    .line 330
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 331
    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnTotal"    # I

    .prologue
    .line 318
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 319
    return-object p0
.end method

.method public final setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .prologue
    .line 630
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    .line 631
    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .prologue
    .line 436
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 437
    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .prologue
    .line 280
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 281
    return-object p0
.end method

.method public final setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .prologue
    .line 650
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 651
    return-object p0
.end method

.method public final setRequestExecutor(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .prologue
    .line 235
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 236
    return-object p0
.end method

.method public final setRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .prologue
    .line 611
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 612
    return-object p0
.end method

.method public final setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .prologue
    .line 638
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 639
    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 266
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 267
    return-object p0
.end method

.method public final setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslSocketFactory"    # Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .prologue
    .line 306
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 307
    return-object p0
.end method

.method public final setSchemePortResolver(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .prologue
    .line 465
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 466
    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "serviceUnavailStrategy"    # Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .prologue
    .line 684
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 685
    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslcontext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 293
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 294
    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .prologue
    .line 426
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 427
    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 478
    return-object p0
.end method

.method public final setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .prologue
    .line 448
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 449
    return-object p0
.end method

.method public final useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    .line 757
    return-object p0
.end method

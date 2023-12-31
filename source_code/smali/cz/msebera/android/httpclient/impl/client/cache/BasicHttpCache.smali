.class Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;


# static fields
.field private static final safeRequestMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

.field private final responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "OPTIONS"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TRACE"

    aput-object v3, v1, v2

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1
    .param p1, "resourceFactory"    # Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    .param p2, "storage"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    .param p3, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .prologue
    .line 103
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;)V
    .locals 6
    .param p1, "resourceFactory"    # Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    .param p2, "storage"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    .param p3, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    .param p4, "uriExtractor"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    .prologue
    .line 95
    new-instance v5, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;

    invoke-direct {v5, p4, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V
    .locals 2
    .param p1, "resourceFactory"    # Lcz/msebera/android/httpclient/client/cache/ResourceFactory;
    .param p2, "storage"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;
    .param p3, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    .param p4, "uriExtractor"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;
    .param p5, "cacheInvalidator"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 81
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    .line 82
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 84
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    .line 85
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 86
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    .line 87
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 2
    .param p1, "config"    # Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .prologue
    .line 107
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;)Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    return-object v0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "variantKey"    # Ljava/lang/String;
    .param p2, "variantCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    .local p3, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/Variant;>;"
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v2, p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 384
    .local v0, "entry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v2, "ETag"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 388
    .local v1, "etagHeader":Lcz/msebera/android/httpclient/Header;
    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/Variant;

    invoke-direct {v3, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 6
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "originResponse"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p4, "requestSent"    # Ljava/util/Date;
    .param p5, "responseReceived"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .line 293
    invoke-static {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 9
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "originResponse"    # Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .param p4, "requestSent"    # Ljava/util/Date;
    .param p5, "responseReceived"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v7, 0x1

    .line 306
    .local v7, "closeOriginResponse":Z
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->getResponseReader(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v8

    .line 308
    .local v8, "responseReader":Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;
    :try_start_0
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    .line 310
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    const/4 v7, 0x0

    .line 312
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 330
    if-eqz v7, :cond_0

    .line 331
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    :cond_0
    :goto_0
    return-object v1

    .line 315
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v5

    .line 316
    .local v5, "resource":Lcz/msebera/android/httpclient/client/cache/Resource;
    invoke-virtual {p0, p3, v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p0, p3, v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 330
    if-eqz v7, :cond_0

    .line 331
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    goto :goto_0

    .line 320
    :cond_2
    :try_start_2
    new-instance v0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 323
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    .line 324
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 326
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v6

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/lang/String;)V

    .line 327
    .local v0, "entry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 328
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 330
    if-eqz v7, :cond_0

    .line 331
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    goto :goto_0

    .line 330
    .end local v0    # "entry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .end local v5    # "resource":Lcz/msebera/android/httpclient/client/cache/Resource;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 331
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    :cond_3
    throw v1
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "existing"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p3, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p4, "variantKey"    # Ljava/lang/String;
    .param p5, "variantCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v8, p2

    .line 240
    .local v8, "src":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    if-nez v8, :cond_0

    .line 241
    move-object v8, p3

    .line 244
    :cond_0
    const/4 v5, 0x0

    .line 245
    .local v5, "resource":Lcz/msebera/android/httpclient/client/cache/Resource;
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v5

    .line 248
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 249
    .local v6, "variantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 251
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v1

    .line 252
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    .line 253
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    .line 254
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 257
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public flushCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 3
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    .line 121
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;->flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 362
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 125
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->safeRequestMethods:Ljava/util/Set;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;->flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 128
    :cond_0
    return-void
.end method

.method generateIncompleteResponseError(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 10
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;

    .prologue
    .line 220
    const-string v4, "Content-Length"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 221
    .local v0, "contentLength":Ljava/lang/Integer;
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v4, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v5, 0x1f6

    const-string v6, "Bad Gateway"

    invoke-direct {v1, v4, v5, v6}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    .line 223
    .local v1, "error":Lcz/msebera/android/httpclient/HttpResponse;
    const-string v4, "Content-Type"

    const-string v5, "text/plain;charset=UTF-8"

    invoke-interface {v1, v4, v5}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "Received incomplete response with Content-Length %d but actual body length %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    .line 226
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 224
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 228
    .local v3, "msgBytes":[B
    const-string v4, "Content-Length"

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v4, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, v4}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 230
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v4

    return-object v4
.end method

.method public getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 5
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 345
    .local v0, "root":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    if-nez v0, :cond_1

    move-object v0, v2

    .line 355
    .end local v0    # "root":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 348
    .restart local v0    # "root":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "variantCacheKey":Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 353
    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method getResponseReader(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;
    .locals 6
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "backEndResponse"    # Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .prologue
    .line 338
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;JLcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)V

    return-object v0
.end method

.method public getVariantCacheEntriesWithEtags(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/Map;
    .locals 7
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v4, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/Variant;>;"
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v6, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 369
    .local v0, "root":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v5

    if-nez v5, :cond_1

    .line 377
    :cond_0
    return-object v4

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 373
    .local v1, "variant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    .local v3, "variantKey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "variantCacheKey":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method isIncompleteResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/Resource;)Z
    .locals 10
    .param p1, "resp"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "resource"    # Lcz/msebera/android/httpclient/client/cache/Resource;

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v3

    .line 198
    .local v3, "status":I
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_1

    const/16 v5, 0xce

    if-eq v3, v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v4

    .line 202
    :cond_1
    const-string v5, "Content-Length"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 203
    .local v1, "hdr":Lcz/msebera/android/httpclient/Header;
    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 212
    .local v0, "contentLength":I
    if-eqz p2, :cond_0

    .line 215
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v6

    int-to-long v8, v0

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "contentLength":I
    :catch_0
    move-exception v2

    .line 210
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public reuseVariantEntryFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    .locals 9
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "req"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "variant"    # Lcz/msebera/android/httpclient/impl/client/cache/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "parentCacheKey":Ljava/lang/String;
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getEntry()Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 177
    .local v3, "entry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "variantKey":Ljava/lang/String;
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "variantCacheKey":Ljava/lang/String;
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$2;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$2;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v0, "callback":Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;
    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v1, v7, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v6

    .line 192
    .local v6, "e":Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not update key ["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 1
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    goto :goto_0
.end method

.method storeNonVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 2
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "req"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 143
    return-void
.end method

.method storeVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 7
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "req"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "parentURI":Ljava/lang/String;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->uriExtractor:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "variantURI":Ljava/lang/String;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v4, v3, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 153
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v0, p0, p2, p3, v3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    .line 166
    .local v0, "callback":Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;
    :try_start_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v4, v2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Lcz/msebera/android/httpclient/client/cache/HttpCacheUpdateException;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not update key ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 7
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "stale"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p4, "originResponse"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p5, "requestSent"    # Ljava/util/Date;
    .param p6, "responseReceived"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 265
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v6

    .line 270
    .local v6, "updatedEntry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    invoke-virtual {p0, p1, p2, v6}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storeInCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 271
    return-object v6
.end method

.method public updateVariantCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 7
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "stale"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p4, "originResponse"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p5, "requestSent"    # Ljava/util/Date;
    .param p6, "responseReceived"    # Ljava/util/Date;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;

    .line 279
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v6

    .line 284
    .local v6, "updatedEntry":Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v0, p7, v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 285
    return-object v6
.end method

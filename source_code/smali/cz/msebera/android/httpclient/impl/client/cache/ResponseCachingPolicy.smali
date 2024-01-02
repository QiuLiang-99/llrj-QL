.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final neverCache1_0ResponsesWithQueryString:Z

.field private final sharedCache:Z

.field private final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "s-maxage"

    aput-object v1, v0, v3

    const-string v1, "must-revalidate"

    aput-object v1, v0, v4

    const-string v1, "public"

    aput-object v1, v0, v5

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xc8

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xcb

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x12c

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x12d

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0x19a

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    .line 63
    return-void
.end method

.method public constructor <init>(JZZZ)V
    .locals 5
    .param p1, "maxObjectSizeBytes"    # J
    .param p3, "sharedCache"    # Z
    .param p4, "neverCache1_0ResponsesWithQueryString"    # Z
    .param p5, "allow303Caching"    # Z

    .prologue
    const/16 v2, 0xce

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 86
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    .line 87
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    .line 88
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    .line 89
    if-eqz p5, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/Integer;

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    goto :goto_0
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string v5, "Cache-Control"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v4

    .line 281
    :cond_1
    const-string v5, "Expires"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    .line 282
    .local v3, "expiresHdr":Lcz/msebera/android/httpclient/Header;
    const-string v5, "Date"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 283
    .local v1, "dateHdr":Lcz/msebera/android/httpclient/Header;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 287
    .local v2, "expires":Ljava/util/Date;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 288
    .local v0, "date":Ljava/util/Date;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v2, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v5, 0x0

    .line 295
    const-string v3, "Via"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 296
    .local v2, "via":Lcz/msebera/android/httpclient/Header;
    if-eqz v2, :cond_1

    .line 297
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 298
    .local v0, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v5

    .line 299
    .local v1, "proto":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "HTTP/1.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 306
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v1    # "proto":Ljava/lang/String;
    :goto_0
    return v3

    .line 302
    .restart local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .restart local v1    # "proto":Ljava/lang/String;
    :cond_0
    const-string v3, "1.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 306
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v1    # "proto":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "req"    # Lcz/msebera/android/httpclient/HttpRequest;

    .prologue
    .line 310
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unknownStatusCode(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 173
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const/16 v1, 0x65

    if-gt p1, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_2

    const/16 v1, 0xce

    if-le p1, v1, :cond_0

    .line 179
    :cond_2
    const/16 v1, 0x12c

    if-lt p1, v1, :cond_3

    const/16 v1, 0x133

    if-le p1, v1, :cond_0

    .line 182
    :cond_3
    const/16 v1, 0x190

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1a1

    if-le p1, v1, :cond_0

    .line 185
    :cond_4
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_5

    const/16 v1, 0x1f9

    if-le p1, v1, :cond_0

    .line 188
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z
    .locals 13
    .param p1, "msg"    # Lcz/msebera/android/httpclient/HttpMessage;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 206
    const-string v5, "Cache-Control"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 207
    .local v0, "cacheControlHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v8, v0

    move v7, v4

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    .line 208
    .local v2, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v9

    array-length v10, v9

    move v6, v4

    :goto_1
    if-ge v6, v10, :cond_3

    aget-object v1, v9, v6

    .line 209
    .local v1, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    array-length v11, p2

    move v5, v4

    :goto_2
    if-ge v5, v11, :cond_2

    aget-object v3, p2, v5

    .line 210
    .local v3, "param":Ljava/lang/String;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 211
    const/4 v4, 0x1

    .line 216
    .end local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v2    # "header":Lcz/msebera/android/httpclient/Header;
    .end local v3    # "param":Ljava/lang/String;
    :cond_0
    return v4

    .line 209
    .restart local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    .restart local v2    # "header":Lcz/msebera/android/httpclient/Header;
    .restart local v3    # "param":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 208
    .end local v3    # "param":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 207
    .end local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_3
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0
.end method

.method protected isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v1, 0x1

    .line 220
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return v1

    .line 223
    :cond_0
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v0, v2

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "public"

    aput-object v2, v0, v1

    .line 228
    .local v0, "cacheableParams":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 11
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v4, "Cache-Control"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 193
    .local v0, "cacheControlHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v6, v0

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 194
    .local v2, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v1, v7, v4

    .line 195
    .local v1, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string v9, "no-store"

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "no-cache"

    .line 196
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v9, :cond_2

    const-string v9, "private"

    .line 197
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 198
    :cond_0
    const/4 v3, 0x1

    .line 202
    .end local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v2    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_1
    return v3

    .line 194
    .restart local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    .restart local v2    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    .end local v1    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0
.end method

.method public isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 245
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "no-store"

    aput-object v4, v2, v3

    .line 246
    .local v2, "uncacheableRequestDirectives":[Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    iget-boolean v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable as it had a query string."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 255
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable as it is missing explicit caching headers."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    iget-boolean v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v4, :cond_4

    .line 265
    const-string v4, "Authorization"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 266
    .local v0, "authNHeaders":[Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    sget-object v4, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 267
    invoke-virtual {p0, p2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    .end local v0    # "authNHeaders":[Lcz/msebera/android/httpclient/Header;
    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "method":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v3

    goto :goto_0
.end method

.method public isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 20
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 108
    .local v3, "cacheable":Z
    const-string v12, "GET"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "HEAD"

    .line 109
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "Response was not cacheable."

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 111
    const/4 v12, 0x0

    .line 169
    :goto_0
    return v12

    .line 114
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v10

    .line 115
    .local v10, "status":I
    sget-object v12, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 117
    const/4 v3, 0x1

    .line 126
    :cond_1
    const-string v12, "Content-Length"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 127
    .local v4, "contentLength":Lcz/msebera/android/httpclient/Header;
    if-eqz v4, :cond_4

    .line 128
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "contentLengthValue":I
    int-to-long v12, v5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 130
    const/4 v12, 0x0

    goto :goto_0

    .line 118
    .end local v4    # "contentLength":Lcz/msebera/android/httpclient/Header;
    .end local v5    # "contentLengthValue":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 119
    const/4 v12, 0x0

    goto :goto_0

    .line 120
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 123
    const/4 v12, 0x0

    goto :goto_0

    .line 134
    .restart local v4    # "contentLength":Lcz/msebera/android/httpclient/Header;
    :cond_4
    const-string v12, "Age"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 136
    .local v2, "ageHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v12, v2

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 137
    const/4 v12, 0x0

    goto :goto_0

    .line 140
    :cond_5
    const-string v12, "Expires"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v9

    .line 142
    .local v9, "expiresHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_6

    .line 143
    const/4 v12, 0x0

    goto :goto_0

    .line 146
    :cond_6
    const-string v12, "Date"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    .line 148
    .local v7, "dateHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v12, v7

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    .line 149
    const/4 v12, 0x0

    goto :goto_0

    .line 152
    :cond_7
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 153
    .local v6, "date":Ljava/util/Date;
    if-nez v6, :cond_8

    .line 154
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 157
    :cond_8
    const-string v12, "Vary"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v14

    array-length v15, v14

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v15, :cond_b

    aget-object v11, v14, v13

    .line 158
    .local v11, "varyHdr":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v11}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_a

    aget-object v8, v16, v12

    .line 159
    .local v8, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string v18, "*"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 160
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 158
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 157
    .end local v8    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_a
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_1

    .line 165
    .end local v11    # "varyHdr":Lcz/msebera/android/httpclient/Header;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 166
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 169
    :cond_c
    if-nez v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_d
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

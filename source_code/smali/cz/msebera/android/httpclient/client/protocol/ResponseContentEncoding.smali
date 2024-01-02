.class public Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field private static final GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# instance fields
.field private final decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "decoderRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-eqz p1, :cond_0

    .line 91
    .end local p1    # "decoderRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 92
    return-void

    .line 87
    .restart local p1    # "decoderRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    :cond_0
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "gzip"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 88
    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "x-gzip"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "deflate"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 12
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v6

    .line 112
    .local v6, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v1

    .line 113
    .local v1, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v7

    .line 116
    .local v7, "requestConfig":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 117
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 118
    .local v0, "ceheader":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    .line 120
    .local v4, "codecs":[Lcz/msebera/android/httpclient/HeaderElement;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v2, v4, v8

    .line 121
    .local v2, "codec":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "codecname":Ljava/lang/String;
    iget-object v10, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-interface {v10, v3}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 123
    .local v5, "decoderFactory":Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;
    if-eqz v5, :cond_1

    .line 124
    new-instance v10, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 125
    const-string v10, "Content-Length"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 126
    const-string v10, "Content-Encoding"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 127
    const-string v10, "Content-MD5"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 120
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const-string v10, "identity"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 130
    new-instance v8, Lcz/msebera/android/httpclient/HttpException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported Content-Coding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 136
    .end local v0    # "ceheader":Lcz/msebera/android/httpclient/Header;
    .end local v2    # "codec":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v3    # "codecname":Ljava/lang/String;
    .end local v4    # "codecs":[Lcz/msebera/android/httpclient/HeaderElement;
    .end local v5    # "decoderFactory":Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;
    :cond_2
    return-void
.end method

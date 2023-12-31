.class public Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;

.field private final inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V
    .locals 0
    .param p1, "wrapped"    # Lcz/msebera/android/httpclient/HttpEntity;
    .param p2, "inputStreamFactory"    # Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 67
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 68
    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 72
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 81
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 83
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v3, "Output stream"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 92
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v3, 0x800

    :try_start_0
    new-array v0, v3, [B

    .line 94
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "buffer":[B
    .end local v2    # "l":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v0    # "buffer":[B
    .restart local v2    # "l":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 100
    return-void
.end method

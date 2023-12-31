.class Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;
.super Ljava/io/InputStream;
.source "LazyDecompressingInputStream.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field private final wrappedStream:Ljava/io/InputStream;

.field private wrapperStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V
    .locals 0
    .param p1, "wrappedStream"    # Ljava/io/InputStream;
    .param p2, "inputStreamFactory"    # Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 50
    return-void
.end method

.method private initWrapper()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;->create(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

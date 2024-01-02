.class public Lcz/msebera/android/httpclient/entity/FileEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 75
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Lcz/msebera/android/httpclient/entity/ContentType;

    .prologue
    .line 63
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 64
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 55
    const-string v0, "File"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    .line 56
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
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
    .line 95
    const-string v3, "Output stream"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v2, v3, [B

    .line 100
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 103
    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    return-void
.end method

.class public Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;
.super Lcz/msebera/android/httpclient/pool/PoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/PoolEntry",
        "<",
        "Lcz/msebera/android/httpclient/HttpHost;",
        "Lcz/msebera/android/httpclient/HttpClientConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "route"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "conn"    # Lcz/msebera/android/httpclient/HttpClientConnection;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;
.super Ljava/lang/Object;
.source "AsynchronousValidationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

.field private final cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

.field private final consecutiveFailedAttempts:I

.field private final context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

.field private final execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

.field private final identifier:Ljava/lang/String;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

.field private final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;I)V
    .locals 2
    .param p1, "parent"    # Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    .param p2, "cachingExec"    # Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;
    .param p3, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p4, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .param p5, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .param p6, "execAware"    # Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    .param p7, "cacheEntry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p8, "identifier"    # Ljava/lang/String;
    .param p9, "consecutiveFailedAttempts"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 80
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    .line 81
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    .line 82
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 83
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    .line 84
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 85
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 86
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 87
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    .line 88
    iput p9, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->consecutiveFailedAttempts:I

    .line 89
    return-void
.end method

.method private isNotServerError(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 138
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotStale(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 7
    .param p1, "httpResponse"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v4, "Warning"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 148
    .local v2, "warnings":[Lcz/msebera/android/httpclient/Header;
    if-eqz v2, :cond_2

    .line 150
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 157
    .local v0, "warning":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "warningValue":Ljava/lang/String;
    const-string v6, "110"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "111"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    .end local v0    # "warning":Lcz/msebera/android/httpclient/Header;
    .end local v1    # "warningValue":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 150
    .restart local v0    # "warning":Lcz/msebera/android/httpclient/Header;
    .restart local v1    # "warningValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "warning":Lcz/msebera/android/httpclient/Header;
    .end local v1    # "warningValue":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private revalidateCacheEntry()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 115
    .local v6, "httpResponse":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_start_1
    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v10

    .line 116
    .local v10, "statusCode":I
    invoke-direct {p0, v10}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->isNotServerError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->isNotStale(Lcz/msebera/android/httpclient/HttpResponse;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    :try_start_2
    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    move v11, v0

    .line 128
    .end local v6    # "httpResponse":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .end local v10    # "statusCode":I
    :goto_1
    return v11

    .restart local v6    # "httpResponse":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .restart local v10    # "statusCode":I
    :cond_0
    move v0, v11

    .line 116
    goto :goto_0

    .line 118
    .end local v10    # "statusCode":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    .end local v6    # "httpResponse":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :catch_0
    move-exception v7

    .line 121
    .local v7, "ioe":Ljava/io/IOException;
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Asynchronous revalidation failed due to I/O error"

    invoke-virtual {v0, v1, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 124
    .local v8, "pe":Lcz/msebera/android/httpclient/HttpException;
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "HTTP protocol exception during asynchronous revalidation"

    invoke-virtual {v0, v1, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 126
    .end local v8    # "pe":Lcz/msebera/android/httpclient/HttpException;
    :catch_2
    move-exception v9

    .line 127
    .local v9, "re":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException thrown during asynchronous revalidation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getConsecutiveFailedAttempts()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->consecutiveFailedAttempts:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->revalidateCacheEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->jobSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    .line 102
    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->jobFailed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    throw v0
.end method

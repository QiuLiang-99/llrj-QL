.class public Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "HttpRequestFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;)V
    .locals 0
    .param p1, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    .local p2, "httpCallable":Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable<TV;>;"
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 49
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    .line 50
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 58
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->cancel()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->abort()V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public endedTime()J
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getEnded()J

    move-result-wide v0

    return-wide v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDuration()J
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->startedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheduledTime()J
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getScheduled()J

    move-result-wide v0

    return-wide v0
.end method

.method public startedTime()J
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getStarted()J

    move-result-wide v0

    return-wide v0
.end method

.method public taskDuration()J
    .locals 4

    .prologue
    .line 106
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->scheduledTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;, "Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask<TV;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

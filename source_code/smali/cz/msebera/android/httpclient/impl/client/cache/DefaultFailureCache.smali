.class public Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;
.super Ljava/lang/Object;
.source "DefaultFailureCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/FailureCache;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field static final DEFAULT_MAX_SIZE:I = 0x3e8

.field static final MAX_UPDATE_TRIES:I = 0xa


# instance fields
.field private final maxSize:I

.field private final storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    return-void
.end method

.method private findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .locals 9

    .prologue
    .line 134
    const-wide v2, 0x7fffffffffffffffL

    .line 135
    .local v2, "oldestTimestamp":J
    const/4 v4, 0x0

    .line 136
    .local v4, "oldestValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 137
    .local v5, "storageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 138
    .local v6, "value":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getCreationTimeInNanos()J

    move-result-wide v0

    .line 139
    .local v0, "creationTimeInNanos":J
    cmp-long v8, v0, v2

    if-gez v8, :cond_0

    .line 140
    move-wide v2, v0

    .line 141
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "oldestValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    check-cast v4, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .restart local v4    # "oldestValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    goto :goto_0

    .line 144
    .end local v0    # "creationTimeInNanos":J
    .end local v5    # "storageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;>;"
    .end local v6    # "value":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_1
    return-object v4
.end method

.method private removeOldestEntryIfMapSizeExceeded()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    if-le v1, v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    move-result-object v0

    .line 127
    .local v0, "valueWithOldestTimestamp":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "valueWithOldestTimestamp":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_0
    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    .line 104
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 105
    .local v3, "oldValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-nez v3, :cond_1

    .line 106
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v2, "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 122
    .end local v2    # "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .end local v3    # "oldValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_0
    return-void

    .line 112
    .restart local v3    # "oldValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    :cond_1
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v0

    .line 113
    .local v0, "errorCount":I
    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    .line 116
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, p1, v4}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 117
    .restart local v2    # "newValue":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    .end local v0    # "errorCount":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getErrorCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "identifier may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 73
    .local v0, "storedErrorCode":Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public increaseErrorCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->updateValue(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->removeOldestEntryIfMapSizeExceeded()V

    .line 91
    return-void
.end method

.method public resetErrorCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

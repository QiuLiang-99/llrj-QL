.class public abstract Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "AbstractExecutionAwareRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
.implements Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;
.implements Ljava/lang/Cloneable;
.implements Lcz/msebera/android/httpclient/HttpRequest;


# instance fields
.field private final aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcz/msebera/android/httpclient/concurrent/Cancellable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/concurrent/Cancellable;

    .line 89
    .local v0, "cancellable":Lcz/msebera/android/httpclient/concurrent/Cancellable;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcz/msebera/android/httpclient/concurrent/Cancellable;->cancel()Z

    .line 93
    .end local v0    # "cancellable":Lcz/msebera/android/httpclient/concurrent/Cancellable;
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;

    .line 113
    .local v0, "clone":Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/CloneUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/message/HeaderGroup;

    iput-object v1, v0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 114
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/CloneUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/params/HttpParams;

    iput-object v1, v0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 115
    return-object v0
.end method

.method public completed()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/concurrent/Cancellable;

    .line 132
    .local v0, "cancellable":Lcz/msebera/android/httpclient/concurrent/Cancellable;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcz/msebera/android/httpclient/concurrent/Cancellable;->cancel()Z

    .line 135
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    return-void
.end method

.method public setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V
    .locals 1
    .param p1, "cancellable"    # Lcz/msebera/android/httpclient/concurrent/Cancellable;

    .prologue
    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V
    .locals 1
    .param p1, "connRequest"    # Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;-><init>(Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    .line 65
    return-void
.end method

.method public setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    .locals 1
    .param p1, "releaseTrigger"    # Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;-><init>(Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    .line 83
    return-void
.end method

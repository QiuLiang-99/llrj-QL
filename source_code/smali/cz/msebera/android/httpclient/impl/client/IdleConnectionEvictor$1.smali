.class Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;
.super Ljava/lang/Object;
.source "IdleConnectionEvictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

.field final synthetic val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    .prologue
    .line 61
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 65
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$000(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    .line 68
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$100(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->val$connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$100(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;->this$0:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->access$202(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 76
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

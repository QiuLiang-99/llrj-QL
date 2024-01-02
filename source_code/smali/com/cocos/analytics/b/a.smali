.class public final Lcom/cocos/analytics/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/Future;

.field private d:Lorg/json/JSONArray;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cocos/analytics/b/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const-wide/16 v8, 0x3c

    const-wide/16 v2, 0x1e

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->b:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->c:Ljava/util/concurrent/Future;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/analytics/b/a;->f:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cocos/analytics/b/b;

    invoke-direct {v1, p0}, Lcom/cocos/analytics/b/b;-><init>(Lcom/cocos/analytics/b/a;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cocos/analytics/b/c;

    invoke-direct {v1, p0}, Lcom/cocos/analytics/b/c;-><init>(Lcom/cocos/analytics/b/a;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v8

    move-wide v4, v8

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/cocos/analytics/b/a;)V
    .locals 2

    const-string v0, "checkAndUploadLog"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->isInited()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cocos/analytics/b/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cocos/analytics/b/f;->a()Z

    :cond_0
    invoke-static {}, Lcom/cocos/analytics/b/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "checkAndUploadLog, database is not open!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/cocos/analytics/b/a;->d()V

    invoke-static {}, Lcom/cocos/analytics/b/f;->c()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/cocos/analytics/b/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cocos/analytics/b/d;

    invoke-direct {v1, p0}, Lcom/cocos/analytics/b/d;-><init>(Lcom/cocos/analytics/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->c:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cocos/analytics/b/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "addRecordToDataBase, database init failed!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/cocos/analytics/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cocos/analytics/b/f;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/cocos/analytics/b/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cocos/analytics/b/a;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "send heartbeat event"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cocos/analytics/a/e;

    invoke-direct {v1, v0}, Lcom/cocos/analytics/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/cocos/analytics/b/a;->a(Lcom/cocos/analytics/a/c;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/cocos/analytics/b/a;->e:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_0

    :try_start_1
    const-string v0, "userEvent"

    iget-object v3, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cocos/analytics/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "destroy..."

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cocos/analytics/b/a;->d()V

    return-void
.end method

.method public final a(Lcom/cocos/analytics/a/c;)V
    .locals 3

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cocos/analytics/b/a;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cocos/analytics/b/a;->d:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/cocos/analytics/a/c;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/cocos/analytics/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/cocos/analytics/b/e;

    invoke-direct {v2, p0}, Lcom/cocos/analytics/b/e;-><init>(Lcom/cocos/analytics/b/a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/analytics/b/a;->f:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/analytics/b/a;->f:Z

    return-void
.end method

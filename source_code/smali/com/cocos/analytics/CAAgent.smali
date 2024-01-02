.class public Lcom/cocos/analytics/CAAgent;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/cocos/analytics/b/a;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    new-instance v0, Lcom/cocos/analytics/b/a;

    invoke-direct {v0}, Lcom/cocos/analytics/b/a;-><init>()V

    iput-object v0, p0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/cocos/analytics/CAAgent;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cocos/analytics/CAAgent;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/cocos/analytics/c/b;->a(Z)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/cocos/analytics/CAAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "init() sdk version : 1.0.5"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valid context is required"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valid channelID is required"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valid appID is required"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valid appSecret is required"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lcom/cocos/analytics/c/a;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cocos/analytics/c/a;->b(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cocos/analytics/c/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/cocos/analytics/CAAgent;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/cocos/analytics/a/f;

    invoke-direct {v0, p0}, Lcom/cocos/analytics/a/f;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static isInited()Z
    .locals 1

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    return v0
.end method

.method public static onDestroy()V
    .locals 2

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    invoke-virtual {v0}, Lcom/cocos/analytics/b/a;->a()V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 6

    const-string v0, "onPause()"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid context is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/cocos/analytics/CAAgent;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/cocos/analytics/a/b;

    invoke-direct {v0, p0}, Lcom/cocos/analytics/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    new-instance v0, Lcom/cocos/analytics/c/e;

    invoke-direct {v0, p0}, Lcom/cocos/analytics/c/e;-><init>(Landroid/content/Context;)V

    const-string v1, "pause_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cocos/analytics/c/e;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    invoke-virtual {v0}, Lcom/cocos/analytics/b/a;->b()V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onResume()"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid context is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/cocos/analytics/CAAgent;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/cocos/analytics/c/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/cocos/analytics/c/c;->c(Landroid/content/Context;)Ljava/lang/String;

    new-instance v0, Lcom/cocos/analytics/a/f;

    invoke-direct {v0, p0}, Lcom/cocos/analytics/a/f;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    :cond_3
    invoke-static {p0}, Lcom/cocos/analytics/c/c;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    invoke-virtual {v0}, Lcom/cocos/analytics/b/a;->c()V

    goto :goto_0
.end method

.method public static sharedInstance()Lcom/cocos/analytics/CAAgent;
    .locals 1

    sget-object v0, Lcom/cocos/analytics/a;->a:Lcom/cocos/analytics/CAAgent;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/cocos/analytics/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cocos/analytics/CAAgent;->a:Lcom/cocos/analytics/b/a;

    invoke-virtual {v0, p1}, Lcom/cocos/analytics/b/a;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cocos/analytics/CAAgent;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cocos/analytics/CAAgent;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.class public Lcom/cocos/analytics/CATask;
.super Ljava/lang/Object;


# static fields
.field public static final Activity:I = 0x5

.field public static final BranchLine:I = 0x3

.field public static final Daily:I = 0x4

.field public static final GuideLine:I = 0x1

.field public static final MainLine:I = 0x2

.field public static final Other:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "taskID would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const-string v0, "taskType would be CATask.GuideLine, CATask.MainLine, CATask.BranchLine, CATask.Daily, CATask.Activity, CATask.Other!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "taskID"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "taskType"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/j;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "start"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static complete(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "taskID would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "taskID"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/j;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static failed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "taskID would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "taskID"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reason"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/j;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "failure"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

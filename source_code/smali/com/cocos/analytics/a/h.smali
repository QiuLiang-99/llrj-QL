.class public final Lcom/cocos/analytics/a/h;
.super Lcom/cocos/analytics/a/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cocos/analytics/a/c;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/cocos/analytics/a/h;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cocos/analytics/a/h;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cocos/analytics/a/h;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/cocos/analytics/a/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cocos/analytics/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cocos/analytics/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/cocos/analytics/a/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "level"

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/cocos/analytics/a/h;->c()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "action"

    iget-object v2, p0, Lcom/cocos/analytics/a/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "level"

    iget-object v2, p0, Lcom/cocos/analytics/a/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cocos/analytics/a/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "reason"

    iget-object v2, p0, Lcom/cocos/analytics/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

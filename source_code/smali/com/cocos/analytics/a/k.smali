.class public final Lcom/cocos/analytics/a/k;
.super Lcom/cocos/analytics/a/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cocos/analytics/a/c;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/cocos/analytics/a/k;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cocos/analytics/a/k;->c:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/cocos/analytics/a/k;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cocos/analytics/a/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/cocos/analytics/a/k;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "virtual"

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lcom/cocos/analytics/a/k;->c()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "action"

    iget-object v2, p0, Lcom/cocos/analytics/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cocos/analytics/a/k;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cocos/analytics/a/k;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/cocos/analytics/a/k;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

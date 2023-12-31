.class public final Lcom/cocos/analytics/a/e;
.super Lcom/cocos/analytics/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cocos/analytics/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "heartbeat"

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/cocos/analytics/a/e;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

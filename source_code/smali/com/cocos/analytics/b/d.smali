.class final Lcom/cocos/analytics/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cocos/analytics/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/cocos/analytics/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/cocos/analytics/b/f;->c()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cocos/analytics/c/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/cocos/analytics/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "data returned by queryRecordsByCount is empty!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/cocos/analytics/c/c;->b(Ljava/lang/String;)Lcom/cocos/analytics/c/c;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cocos/analytics/b/f;->d()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/cocos/analytics/c/c;->a()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "send log failed!"

    invoke-static {v3}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cocos/analytics/c/c;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_5
    const-string v1, "send log succeeded!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

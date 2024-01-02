.class public Lcom/cocos/analytics/CAAccount;
.super Ljava/lang/Object;


# static fields
.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "roleID and userName would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "roleID"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userName"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "race"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "class"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gameServer"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "role"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "createRole"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loginFailed()V
    .locals 3

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "failure"

    invoke-direct {v0, v1, v2}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0
.end method

.method public static loginStart()V
    .locals 3

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "start"

    invoke-direct {v0, v1, v2}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0
.end method

.method public static loginSuccess(Ljava/lang/String;)V
    .locals 3

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

    const-string v0, "uid would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cocos/analytics/c/e;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cocos/analytics/c/e;-><init>(Landroid/content/Context;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Lcom/cocos/analytics/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "success"

    invoke-direct {v0, v1, v2}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0
.end method

.method public static logout()V
    .locals 3

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "logout"

    invoke-direct {v0, v1, v2}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    new-instance v0, Lcom/cocos/analytics/c/e;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cocos/analytics/c/e;-><init>(Landroid/content/Context;)V

    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cocos/analytics/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAccountType(Ljava/lang/String;)V
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

    const-string v0, "accountType would not be an empty string!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "accountType"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setType"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setAge(I)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p0, :cond_1

    const-string v0, "age would be >= 0"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "age"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setAge"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setGender(I)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const-string v0, "gender would be CAAccount.GENDER_UNKNOWN, CAAccount.GENDER_MALE or CAAccount.GENDER_FEMALE"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "gender"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setGender"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setLevel(I)V
    .locals 4

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocos/analytics/CAAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p0, :cond_1

    const-string v0, "level would be >= 0"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "level"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/cocos/analytics/a/a;

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setLevel"

    invoke-direct {v0, v2, v3, v1}, Lcom/cocos/analytics/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocos/analytics/CAAgent;->a(Lcom/cocos/analytics/a/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

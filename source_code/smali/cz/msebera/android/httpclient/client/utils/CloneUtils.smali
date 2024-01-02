.class public Lcz/msebera/android/httpclient/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lcz/msebera/android/httpclient/client/utils/CloneUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static cloneObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return-object v4

    .line 49
    :cond_0
    instance-of v5, p0, Ljava/lang/Cloneable;

    if-eqz v5, :cond_2

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "clone"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 59
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 60
    .local v4, "result":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 54
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 63
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Ljava/lang/CloneNotSupportedException;

    if-eqz v5, :cond_1

    .line 64
    check-cast v0, Ljava/lang/CloneNotSupportedException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 66
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v5, Ljava/lang/Error;

    const-string v6, "Unexpected exception"

    invoke-direct {v5, v6, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 68
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 69
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalAccessError;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v5, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v5}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v5
.end method

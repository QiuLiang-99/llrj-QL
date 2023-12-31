.class public Lcz/msebera/android/httpclient/client/utils/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final impl:Lcz/msebera/android/httpclient/client/utils/Idn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/JdkIdn;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/utils/JdkIdn;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, "_impl":Lcz/msebera/android/httpclient/client/utils/Idn;
    :goto_0
    sput-object v0, Lcz/msebera/android/httpclient/client/utils/Punycode;->impl:Lcz/msebera/android/httpclient/client/utils/Idn;

    .line 51
    return-void

    .line 47
    .end local v0    # "_impl":Lcz/msebera/android/httpclient/client/utils/Idn;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;-><init>()V

    .restart local v0    # "_impl":Lcz/msebera/android/httpclient/client/utils/Idn;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "punycode"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/Punycode;->impl:Lcz/msebera/android/httpclient/client/utils/Idn;

    invoke-interface {v0, p0}, Lcz/msebera/android/httpclient/client/utils/Idn;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;
.super Ljava/lang/Object;
.source "CookiePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcz/msebera/android/httpclient/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .locals 2
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;

    .prologue
    .line 49
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .locals 10
    .param p1, "c1"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "c2"    # Lcz/msebera/android/httpclient/cookie/Cookie;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v2

    .line 56
    .local v2, "l1":I
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v3

    .line 58
    .local v3, "l2":I
    sub-int v4, v3, v2

    .line 59
    .local v4, "result":I
    if-nez v4, :cond_0

    instance-of v5, p1, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    if-eqz v5, :cond_0

    instance-of v5, p2, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    if-eqz v5, :cond_0

    .line 60
    check-cast p1, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    .end local p1    # "c1":Lcz/msebera/android/httpclient/cookie/Cookie;
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    .line 61
    .local v0, "d1":Ljava/util/Date;
    check-cast p2, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    .end local p2    # "c2":Lcz/msebera/android/httpclient/cookie/Cookie;
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    .line 62
    .local v1, "d2":Ljava/util/Date;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v4, v6

    .line 66
    .end local v0    # "d1":Ljava/util/Date;
    .end local v1    # "d2":Ljava/util/Date;
    .end local v4    # "result":I
    :cond_0
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcz/msebera/android/httpclient/cookie/Cookie;

    check-cast p2, Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v0

    return v0
.end method

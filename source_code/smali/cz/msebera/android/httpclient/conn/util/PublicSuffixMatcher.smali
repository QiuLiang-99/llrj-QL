.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
.super Ljava/lang/Object;
.source "PublicSuffixMatcher.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v2, "Domain suffix rules"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "rule":Ljava/lang/String;
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v3, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 61
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    .line 62
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "exception":Ljava/lang/String;
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v3, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 66
    .end local v0    # "exception":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method public getDomainRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 78
    if-nez p1, :cond_1

    move-object v3, v4

    .line 110
    :cond_0
    :goto_0
    return-object v3

    .line 81
    :cond_1
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    .local v0, "domainName":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "segment":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_4

    .line 89
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-static {v3}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-static {v3}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v3, v0

    .line 110
    goto :goto_0

    .line 97
    :cond_5
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 98
    .local v2, "nextdot":I
    if-eq v2, v8, :cond_8

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "nextSegment":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_6

    .line 101
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 105
    :cond_6
    if-eq v2, v8, :cond_7

    .line 106
    move-object v0, v3

    .line 108
    :cond_7
    move-object v3, v1

    .line 109
    goto :goto_1

    .end local v1    # "nextSegment":Ljava/lang/String;
    :cond_8
    move-object v1, v4

    .line 98
    goto :goto_2
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 118
    .end local p1    # "domain":Ljava/lang/String;
    :goto_0
    return v2

    .line 117
    .restart local p1    # "domain":Ljava/lang/String;
    :cond_0
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "domain":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "domainRoot":Ljava/lang/String;
    if-nez v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

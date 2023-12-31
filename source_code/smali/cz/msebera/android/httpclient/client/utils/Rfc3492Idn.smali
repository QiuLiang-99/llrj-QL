.class public Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/utils/Idn;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .locals 4
    .param p1, "delta"    # I
    .param p2, "numpoints"    # I
    .param p3, "firsttime"    # Z

    .prologue
    .line 54
    move v0, p1

    .line 55
    .local v0, "d":I
    if-eqz p3, :cond_0

    .line 56
    div-int/lit16 v0, v0, 0x2bc

    .line 60
    :goto_0
    div-int v2, v0, p2

    add-int/2addr v0, v2

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "k":I
    :goto_1
    const/16 v2, 0x1c7

    if-le v0, v2, :cond_1

    .line 63
    div-int/lit8 v0, v0, 0x23

    .line 64
    add-int/lit8 v1, v1, 0x24

    goto :goto_1

    .line 58
    .end local v1    # "k":I
    :cond_0
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 66
    .restart local v1    # "k":I
    :cond_1
    mul-int/lit8 v2, v0, 0x24

    add-int/lit8 v3, v0, 0x26

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method private digit(C)I
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 70
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 71
    add-int/lit8 v0, p1, -0x41

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 74
    add-int/lit8 v0, p1, -0x61

    goto :goto_0

    .line 76
    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    .line 77
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    move-object/from16 v4, p1

    .line 101
    .local v4, "input":Ljava/lang/String;
    const/16 v7, 0x80

    .line 102
    .local v7, "n":I
    const/4 v3, 0x0

    .line 103
    .local v3, "i":I
    const/16 v0, 0x48

    .line 104
    .local v0, "bias":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v9, "output":Ljava/lang/StringBuilder;
    const/16 v12, 0x2d

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 106
    .local v6, "lastdelim":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 107
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 112
    move v8, v3

    .line 113
    .local v8, "oldi":I
    const/4 v11, 0x1

    .line 114
    .local v11, "w":I
    const/16 v5, 0x24

    .line 115
    .local v5, "k":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 135
    :cond_1
    sub-int v13, v3, v8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v14, v12, 0x1

    if-nez v8, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-direct {p0, v13, v14, v12}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v0

    .line 136
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    div-int v12, v3, v12

    add-int/2addr v7, v12

    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    rem-int/2addr v3, v12

    .line 139
    int-to-char v12, v7

    invoke-virtual {v9, v3, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_0

    .line 118
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 119
    .local v1, "c":C
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->digit(C)I

    move-result v2

    .line 121
    .local v2, "digit":I
    mul-int v12, v2, v11

    add-int/2addr v3, v12

    .line 123
    add-int/lit8 v12, v0, 0x1

    if-gt v5, v12, :cond_3

    .line 124
    const/4 v10, 0x1

    .line 130
    .local v10, "t":I
    :goto_3
    if-lt v2, v10, :cond_1

    .line 133
    rsub-int/lit8 v12, v10, 0x24

    mul-int/2addr v11, v12

    .line 114
    add-int/lit8 v5, v5, 0x24

    goto :goto_1

    .line 125
    .end local v10    # "t":I
    :cond_3
    add-int/lit8 v12, v0, 0x1a

    if-lt v5, v12, :cond_4

    .line 126
    const/16 v10, 0x1a

    .restart local v10    # "t":I
    goto :goto_3

    .line 128
    .end local v10    # "t":I
    :cond_4
    sub-int v10, v5, v0

    .restart local v10    # "t":I
    goto :goto_3

    .line 135
    .end local v1    # "c":C
    .end local v2    # "digit":I
    .end local v10    # "t":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 142
    .end local v5    # "k":I
    .end local v8    # "oldi":I
    .end local v11    # "w":I
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "punycode"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .local v2, "unicode":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    const-string v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v0    # "t":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

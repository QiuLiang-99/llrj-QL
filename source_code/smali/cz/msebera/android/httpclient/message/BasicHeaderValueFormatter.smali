.class public Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/HeaderValueFormatter;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static formatElements([Lcz/msebera/android/httpclient/HeaderElement;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elems"    # [Lcz/msebera/android/httpclient/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/HeaderValueFormatter;

    .prologue
    .line 92
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    .line 93
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatHeaderElement(Lcz/msebera/android/httpclient/HeaderElement;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lcz/msebera/android/httpclient/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/HeaderValueFormatter;

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    .line 160
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatNameValuePair(Lcz/msebera/android/httpclient/NameValuePair;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvp"    # Lcz/msebera/android/httpclient/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/HeaderValueFormatter;

    .prologue
    .line 311
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    .line 312
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatParameters([Lcz/msebera/android/httpclient/NameValuePair;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvps"    # [Lcz/msebera/android/httpclient/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/HeaderValueFormatter;

    .prologue
    .line 245
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    .line 246
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method


# virtual methods
.method protected doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .prologue
    const/16 v4, 0x22

    .line 377
    move v2, p3

    .line 378
    .local v2, "quoteFlag":Z
    if-nez v2, :cond_0

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 387
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 388
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 389
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 392
    :cond_2
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "ch":C
    :cond_3
    if-eqz v2, :cond_4

    .line 395
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 397
    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lcz/msebera/android/httpclient/HeaderElement;)I
    .locals 5
    .param p1, "elems"    # [Lcz/msebera/android/httpclient/HeaderElement;

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 139
    :cond_1
    return v1

    .line 134
    :cond_2
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v1, v3, 0x2

    .line 135
    .local v1, "result":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 136
    .local v0, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v4

    add-int/2addr v1, v4

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I
    .locals 5
    .param p1, "elem"    # Lcz/msebera/android/httpclient/HeaderElement;

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 206
    const/4 v2, 0x0

    .line 224
    :cond_0
    return v2

    .line 209
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 210
    .local v2, "result":I
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 216
    :cond_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterCount()I

    move-result v1

    .line 217
    .local v1, "parcnt":I
    if-lez v1, :cond_0

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 220
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameter(I)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I
    .locals 3
    .param p1, "nvp"    # Lcz/msebera/android/httpclient/NameValuePair;

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 354
    .local v0, "result":I
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method protected estimateParametersLen([Lcz/msebera/android/httpclient/NameValuePair;)I
    .locals 5
    .param p1, "nvps"    # [Lcz/msebera/android/httpclient/NameValuePair;

    .prologue
    const/4 v2, 0x0

    .line 283
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 292
    :cond_1
    return v1

    .line 287
    :cond_2
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v1, v3, 0x2

    .line 288
    .local v1, "result":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 289
    .local v0, "nvp":Lcz/msebera/android/httpclient/NameValuePair;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v4

    add-int/2addr v1, v4

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public formatElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "elems"    # [Lcz/msebera/android/httpclient/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 102
    const-string v3, "Header element array"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateElementsLen([Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v2

    .line 104
    .local v2, "len":I
    move-object v0, p1

    .line 105
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 111
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 112
    if-lez v1, :cond_0

    .line 113
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 115
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {p0, v0, v3, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 118
    .restart local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 6
    .param p1, "charBuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "elem"    # Lcz/msebera/android/httpclient/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 169
    const-string v5, "Header element"

    invoke-static {p2, v5}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v2

    .line 171
    .local v2, "len":I
    move-object v0, p1

    .line 172
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 178
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 179
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 181
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 182
    invoke-virtual {p0, v0, v4, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 185
    :cond_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterCount()I

    move-result v3

    .line 186
    .local v3, "parcnt":I
    if-lez v3, :cond_2

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 188
    const-string v5, "; "

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 189
    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HeaderElement;->getParameter(I)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v5

    invoke-virtual {p0, v0, v5, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "i":I
    .end local v3    # "parcnt":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 193
    .restart local v3    # "parcnt":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "nvp"    # Lcz/msebera/android/httpclient/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 321
    const-string v3, "Name / value pair"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v1

    .line 323
    .local v1, "len":I
    move-object v0, p1

    .line 324
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 325
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 330
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 331
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 333
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 334
    invoke-virtual {p0, v0, v2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 337
    :cond_0
    return-object v0

    .line 327
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public formatParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lcz/msebera/android/httpclient/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 255
    const-string v3, "Header parameter array"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateParametersLen([Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v2

    .line 257
    .local v2, "len":I
    move-object v0, p1

    .line 258
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 259
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 264
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 265
    if-lez v1, :cond_0

    .line 266
    const-string v3, "; "

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 268
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {p0, v0, v3, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 271
    .restart local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method protected isSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 409
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnsafe(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 422
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

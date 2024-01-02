.class Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final COMMA_CHAR:C = ','

.field private static final DQUOTE_CHAR:C = '\"'

.field private static final EQUAL_CHAR:C = '='

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final PARAM_DELIMITER:C = ';'

.field private static final SPECIAL_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_DELIMS:Ljava/util/BitSet;

.field private static final VALUE_DELIMS:Ljava/util/BitSet;


# instance fields
.field private final attribHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

.field private final tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput v2, v0, v1

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x3d
        0x3b
    .end array-data

    .line 76
    :array_1
    .array-data 4
        0x20
        0x22
        0x2c
        0x3b
        0x5c
    .end array-data
.end method

.method varargs constructor <init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V
    .locals 6
    .param p1, "handlers"    # [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 86
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    .line 87
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 88
    .local v0, "handler":Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "handler":Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;
    :cond_0
    sget-object v1, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    .line 91
    return-void
.end method

.method static getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 3
    .param p0, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "defaultPath":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 96
    .local v1, "lastSlashIndex":I
    if-ltz v1, :cond_1

    .line 97
    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 101
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    return-object v0
.end method


# virtual methods
.method containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "chars"    # Ljava/util/BitSet;

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 258
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 259
    .local v0, "ch":C
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 263
    .end local v0    # "ch":C
    :goto_1
    return v2

    .line 257
    .restart local v0    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "ch":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method containsSpecialChar(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 253
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    const/16 v11, 0x5c

    const/4 v10, 0x1

    const/16 v9, 0x22

    .line 210
    const-string v8, "List of cookies"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v7, "sortedCookies":Ljava/util/List;, "Ljava/util/List<+Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    sget-object v8, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    :goto_0
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x14

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 220
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    const-string v8, "Cookie"

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 221
    const-string v8, ": "

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 222
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 223
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 224
    .local v2, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    if-lez v5, :cond_0

    .line 225
    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 226
    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 228
    :cond_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 229
    invoke-interface {v2}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 231
    const/16 v8, 0x3d

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 232
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsSpecialChar(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 233
    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 234
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 235
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 236
    .local v1, "ch":C
    if-eq v1, v9, :cond_1

    if-ne v1, v11, :cond_2

    .line 237
    :cond_1
    invoke-virtual {v0, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 239
    :cond_2
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 217
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v1    # "ch":C
    .end local v2    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sortedCookies":Ljava/util/List;, "Ljava/util/List<+Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    :cond_3
    move-object v7, p1

    .restart local v7    # "sortedCookies":Ljava/util/List;, "Ljava/util/List<+Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    goto :goto_0

    .line 241
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .restart local v2    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    .restart local v4    # "i":I
    .restart local v5    # "n":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 222
    .end local v4    # "i":I
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    :cond_6
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_3

    .line 247
    .end local v2    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    .end local v6    # "s":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    new-instance v8, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v8, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-object v3
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public final match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 6
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .prologue
    const/4 v1, 0x0

    .line 198
    const-string v2, "Cookie"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-string v2, "Cookie origin"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 201
    .local v0, "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    .end local v0    # "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    :goto_1
    return v1

    .line 200
    .restart local v0    # "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 17
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v14, "Header"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v14, "Cookie origin"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Set-Cookie"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 115
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unrecognized cookie header: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 119
    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v14, :cond_1

    move-object/from16 v14, p1

    .line 120
    check-cast v14, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v14}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    .line 121
    .local v2, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    move-object/from16 v14, p1

    check-cast v14, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v14}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v14

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v15

    invoke-direct {v4, v14, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 131
    .local v4, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v15, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v14, v2, v4, v15}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    .line 133
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cookie name is invalid: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 123
    .end local v2    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v4    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "s":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 125
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v15, "Header value is null"

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 127
    :cond_2
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-direct {v2, v14}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 128
    .restart local v2    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v2, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 129
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v15

    invoke-direct {v4, v14, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .restart local v4    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    goto :goto_0

    .line 135
    .end local v11    # "s":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 136
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cookie value is invalid: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 138
    :cond_4
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    invoke-virtual {v2, v14}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v13

    .line 139
    .local v13, "valueDelim":I
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 140
    const/16 v14, 0x3d

    if-eq v13, v14, :cond_5

    .line 141
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cookie value is invalid: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 143
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v15, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v14, v2, v4, v15}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v14

    if-nez v14, :cond_6

    .line 145
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 147
    :cond_6
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v3, v7, v12}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v3, "cookie":Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;
    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 149
    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 150
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setCreationDate(Ljava/util/Date;)V

    .line 152
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    .local v1, "attribMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v14

    if-nez v14, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v15, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v14, v2, v4, v15}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "paramName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 156
    .local v10, "paramValue":Ljava/lang/String;
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v14

    if-nez v14, :cond_7

    .line 157
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    invoke-virtual {v2, v14}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    .line 158
    .local v8, "paramDelim":I
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 159
    const/16 v14, 0x3d

    if-ne v8, v14, :cond_7

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v15, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v14, v2, v4, v15}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v14

    if-nez v14, :cond_7

    .line 162
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 166
    .end local v8    # "paramDelim":I
    :cond_7
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14, v10}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    .end local v9    # "paramName":Ljava/lang/String;
    .end local v10    # "paramValue":Ljava/lang/String;
    :cond_8
    const-string v14, "max-age"

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 171
    const-string v14, "expires"

    invoke-interface {v1, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 175
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 176
    .restart local v9    # "paramName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 177
    .restart local v10    # "paramValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 178
    .local v6, "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    if-eqz v6, :cond_a

    .line 179
    invoke-interface {v6, v3, v10}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    .end local v9    # "paramName":Ljava/lang/String;
    .end local v10    # "paramValue":Ljava/lang/String;
    :cond_b
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    return-object v14
.end method

.method public final validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 4
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v1, "Cookie"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    const-string v1, "Cookie origin"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 192
    .local v0, "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "handler":Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    :cond_0
    return-void
.end method

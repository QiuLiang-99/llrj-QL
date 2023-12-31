.class public final Lcz/msebera/android/httpclient/client/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/utils/DateUtils$DateFormatHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v4, v1, v2

    const-string v4, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "EEE MMM d HH:mm:ss yyyy"

    aput-object v5, v1, v4

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 77
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->GMT:Ljava/util/TimeZone;

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 83
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static clearThreadLocal()V
    .locals 0

    .prologue
    .line 187
    invoke-static {}, Lcz/msebera/android/httpclient/client/utils/DateUtils$DateFormatHolder;->clearThreadLocal()V

    .line 188
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 158
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v1, "Date"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    const-string v1, "Pattern"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 178
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0, v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 11
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .param p2, "startDate"    # Ljava/util/Date;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    const-string v7, "Date value"

    invoke-static {p0, v7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    if-eqz p1, :cond_1

    move-object v2, p1

    .line 129
    .local v2, "localDateFormats":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 130
    .local v3, "localStartDate":Ljava/util/Date;
    :goto_1
    move-object v6, p0

    .line 133
    .local v6, "v":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 137
    :cond_0
    array-length v9, v2

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_4

    aget-object v0, v2, v7

    .line 138
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 139
    .local v1, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 140
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 141
    .local v4, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v1, v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 142
    .local v5, "result":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "dateParser":Ljava/text/SimpleDateFormat;
    .end local v4    # "pos":Ljava/text/ParsePosition;
    .end local v5    # "result":Ljava/util/Date;
    :goto_3
    return-object v5

    .line 128
    .end local v2    # "localDateFormats":[Ljava/lang/String;
    .end local v3    # "localStartDate":Ljava/util/Date;
    .end local v6    # "v":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcz/msebera/android/httpclient/client/utils/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    goto :goto_0

    .line 129
    .restart local v2    # "localDateFormats":[Ljava/lang/String;
    :cond_2
    sget-object v3, Lcz/msebera/android/httpclient/client/utils/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    goto :goto_1

    .line 137
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v1    # "dateParser":Ljava/text/SimpleDateFormat;
    .restart local v3    # "localStartDate":Ljava/util/Date;
    .restart local v4    # "pos":Ljava/text/ParsePosition;
    .restart local v5    # "result":Ljava/util/Date;
    .restart local v6    # "v":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 146
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "dateParser":Ljava/text/SimpleDateFormat;
    .end local v4    # "pos":Ljava/text/ParsePosition;
    .end local v5    # "result":Ljava/util/Date;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

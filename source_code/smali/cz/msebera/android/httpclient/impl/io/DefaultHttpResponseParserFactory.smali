.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseParserFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory",
        "<",
        "Lcz/msebera/android/httpclient/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;


# instance fields
.field private final lineParser:Lcz/msebera/android/httpclient/message/LineParser;

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;-><init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;)V
    .locals 0
    .param p1, "lineParser"    # Lcz/msebera/android/httpclient/message/LineParser;
    .param p2, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .end local p1    # "lineParser":Lcz/msebera/android/httpclient/message/LineParser;
    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    .line 58
    if-eqz p2, :cond_1

    .end local p2    # "responseFactory":Lcz/msebera/android/httpclient/HttpResponseFactory;
    :goto_1
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 60
    return-void

    .line 57
    .restart local p1    # "lineParser":Lcz/msebera/android/httpclient/message/LineParser;
    .restart local p2    # "responseFactory":Lcz/msebera/android/httpclient/HttpResponseFactory;
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_0

    .line 58
    .end local p1    # "lineParser":Lcz/msebera/android/httpclient/message/LineParser;
    :cond_1
    sget-object p2, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    goto :goto_1
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .locals 3
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .param p2, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "Lcz/msebera/android/httpclient/config/MessageConstraints;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageParser",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-object v0
.end method

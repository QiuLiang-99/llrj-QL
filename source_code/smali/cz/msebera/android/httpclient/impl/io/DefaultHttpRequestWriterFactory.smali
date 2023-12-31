.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestWriterFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory",
        "<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;


# instance fields
.field private final lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V
    .locals 0
    .param p1, "lineFormatter"    # Lcz/msebera/android/httpclient/message/LineFormatter;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .end local p1    # "lineFormatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 53
    return-void

    .line 52
    .restart local p1    # "lineFormatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    goto :goto_0
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionOutputBuffer;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;)V

    return-object v0
.end method

.class public Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter",
        "<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/LineFormatter;
    .param p3, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic writeHeadLine(Lcz/msebera/android/httpclient/HttpMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lcz/msebera/android/httpclient/HttpRequest;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->writeHeadLine(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-void
.end method

.method protected writeHeadLine(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 3
    .param p1, "message"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/message/LineFormatter;->formatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    .line 60
    return-void
.end method

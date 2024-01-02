.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageWriter;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageWriter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field protected final lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

.field protected final sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/LineFormatter;

    .prologue
    .line 92
    .local p0, "this":Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;, "Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 94
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 95
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 96
    return-void

    .line 94
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    goto :goto_0
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lcz/msebera/android/httpclient/message/LineFormatter;
    .param p3, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;, "Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 76
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 77
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 78
    return-void

    .line 77
    .restart local p2    # "formatter":Lcz/msebera/android/httpclient/message/LineFormatter;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    goto :goto_0
.end method


# virtual methods
.method public write(Lcz/msebera/android/httpclient/HttpMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;, "Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter<TT;>;"
    .local p1, "message":Lcz/msebera/android/httpclient/HttpMessage;, "TT;"
    const-string v2, "HTTP message"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->writeHeadLine(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 111
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v1

    .local v1, "it":Lcz/msebera/android/httpclient/HeaderIterator;
    :goto_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 113
    .local v0, "header":Lcz/msebera/android/httpclient/Header;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 114
    invoke-interface {v3, v4, v0}, Lcz/msebera/android/httpclient/message/LineFormatter;->formatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    goto :goto_0

    .line 116
    .end local v0    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 117
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    .line 118
    return-void
.end method

.method protected abstract writeHeadLine(Lcz/msebera/android/httpclient/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

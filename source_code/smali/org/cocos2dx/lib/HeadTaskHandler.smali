.class Lorg/cocos2dx/lib/HeadTaskHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field _host:Ljava/lang/String;

.field _id:I

.field _path:Ljava/lang/String;

.field _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "downloader"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .param p2, "id"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 81
    iput p2, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_id:I

    .line 82
    iput-object p3, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_host:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_url:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_path:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method LogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "Cocos2dxDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure(code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " headers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/HeadTaskHandler;->LogD(Ljava/lang/String;)V

    .line 104
    const-string v0, ""

    .line 105
    .local v0, "errStr":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 106
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    .line 109
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 89
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    .local v0, "acceptRanges":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 91
    aget-object v1, p2, v2

    .line 92
    .local v1, "elem":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Accept-Ranges"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bytes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    .end local v1    # "elem":Lcz/msebera/android/httpclient/Header;
    :cond_0
    iget-object v3, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_host:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->setResumingSupport(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    iget-object v3, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v4, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_id:I

    iget-object v5, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_url:Ljava/lang/String;

    iget-object v6, p0, Lorg/cocos2dx/lib/HeadTaskHandler;->_path:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->createTask(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 90
    .restart local v1    # "elem":Lcz/msebera/android/httpclient/Header;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

.field final synthetic val$errStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 356
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$000(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget v2, v2, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    .line 357
    return-void
.end method

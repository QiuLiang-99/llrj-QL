.class Lorg/cocos2dx/lib/Cocos2dxDownloader$1;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field final synthetic val$downloadBytes:J

.field final synthetic val$downloadNow:J

.field final synthetic val$downloadTotal:J

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IJJJ)V
    .locals 1
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$id:I

    iput-wide p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadBytes:J

    iput-wide p5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadNow:J

    iput-wide p7, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadTotal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 235
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$000(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v2

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$id:I

    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadBytes:J

    iget-wide v6, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadNow:J

    iget-wide v8, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadTotal:J

    invoke-virtual/range {v1 .. v9}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnProgress(IIJJJ)V

    .line 236
    return-void
.end method

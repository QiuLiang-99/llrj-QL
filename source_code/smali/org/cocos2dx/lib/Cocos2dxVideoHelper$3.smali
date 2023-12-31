.class final Lorg/cocos2dx/lib/Cocos2dxVideoHelper$3;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->getDuration(I)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 415
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Float;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1500()Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$3;->val$index:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 419
    .local v1, "video":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    const/high16 v0, -0x40800000    # -1.0f

    .line 420
    .local v0, "duration":F
    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 423
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 424
    const-string v2, "Cocos2dxVideoHelper"

    const-string v3, "Video player\'s duration is not ready to get now!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$3;->call()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

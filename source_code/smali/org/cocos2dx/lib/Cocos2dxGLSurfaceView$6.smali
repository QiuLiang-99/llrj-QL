.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field final synthetic val$idDown:I

.field final synthetic val$xDown:F

.field final synthetic val$yDown:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$idDown:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$xDown:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$yDown:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$idDown:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$xDown:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;->val$yDown:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionDown(IFF)V

    .line 251
    return-void
.end method

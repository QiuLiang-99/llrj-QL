.class Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;
.super Ljava/lang/Object;
.source "Cocos2dxAudioFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->access$000(I)V

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setAudioFocus(Z)V

    .line 76
    return-void
.end method

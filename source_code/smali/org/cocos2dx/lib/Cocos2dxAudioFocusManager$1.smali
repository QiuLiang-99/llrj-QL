.class final Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;
.super Ljava/lang/Object;
.source "Cocos2dxAudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 44
    const-string v0, "AudioFocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 49
    const-string v0, "AudioFocusManager"

    const-string v1, "Pause music by AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 60
    const-string v0, "AudioFocusManager"

    const-string v1, "Pause music by AUDIOFOCUS_LOSS_TRANSILENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 70
    const-string v0, "AudioFocusManager"

    const-string v1, "Lower the volume, keep playing by AUDIOFOCUS_LOSS_TRANSILENT_CAN_DUCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    const-string v0, "AudioFocusManager"

    const-string v1, "Resume music by AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.class Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;
.super Ljava/lang/Object;
.source "Cocos2dxAudioFocusManager.java"


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x0

.field private static final AUDIOFOCUS_LOST:I = 0x1

.field private static final AUDIOFOCUS_LOST_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_LOST_TRANSIENT_CAN_DUCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->nativeOnAudioFocusChange(I)V

    return-void
.end method

.method private static native nativeOnAudioFocusChange(I)V
.end method

.method static registerAudioFocusListener(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 94
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 97
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 103
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    .line 104
    const-string v3, "AudioFocusManager"

    const-string v4, "requestAudioFocus succeed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return v2

    .line 108
    :cond_0
    const-string v2, "AudioFocusManager"

    const-string v3, "requestAudioFocus failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static unregisterAudioFocusListener(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 114
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 115
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    const-string v2, "AudioFocusManager"

    const-string v3, "abandonAudioFocus succeed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;

    invoke-direct {v2}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;-><init>()V

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 128
    return-void

    .line 118
    :cond_0
    const-string v2, "AudioFocusManager"

    const-string v3, "abandonAudioFocus failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

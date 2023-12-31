.class public Lorg/cocos2dx/lib/GameControllerAdapter;
.super Ljava/lang/Object;
.source "GameControllerAdapter.java"


# static fields
.field private static sRunnableFrameStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerConnected(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerDisconnected(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;IIZFZ)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # F
    .param p5, "x5"    # Z

    .prologue
    .line 29
    invoke-static/range {p0 .. p5}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;IIFZ)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V

    return-void
.end method

.method public static addRunnableToFrameStartList(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 35
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method private static native nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V
.end method

.method private static native nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V
.end method

.method private static native nativeControllerConnected(Ljava/lang/String;I)V
.end method

.method private static native nativeControllerDisconnected(Ljava/lang/String;I)V
.end method

.method public static onAxisEvent(Ljava/lang/String;IIFZ)V
    .locals 6
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I
    .param p2, "axisID"    # I
    .param p3, "value"    # F
    .param p4, "isAnalog"    # Z

    .prologue
    .line 88
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter$4;-><init>(Ljava/lang/String;IIFZ)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static onButtonEvent(Ljava/lang/String;IIZFZ)V
    .locals 7
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I
    .param p2, "button"    # I
    .param p3, "isPressed"    # Z
    .param p4, "value"    # F
    .param p5, "isAnalog"    # Z

    .prologue
    .line 77
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerAdapter$3;-><init>(Ljava/lang/String;IIZFZ)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public static onConnected(Ljava/lang/String;I)V
    .locals 1
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I

    .prologue
    .line 55
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static onDisconnected(Ljava/lang/String;I)V
    .locals 1
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "controller"    # I

    .prologue
    .line 66
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public static onDrawFrameStart()V
    .locals 3

    .prologue
    .line 44
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 47
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 48
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static removeRunnableFromFrameStartList(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

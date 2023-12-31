.class public Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;
.super Ljava/lang/Object;
.source "Cocos2dxTextInputWrapper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mOriginText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0
    .param p1, "pCocos2dxGLSurfaceView"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 57
    return-void
.end method

.method private isFullScreenEdit()Z
    .locals 4

    .prologue
    .line 64
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditBox;

    move-result-object v1

    .line 65
    .local v1, "textField":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->isFullScreenEdit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v3, 0x0

    .line 83
    .local v3, "old_i":I
    const/4 v2, 0x0

    .line 84
    .local v2, "new_i":I
    :goto_1
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 85
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 92
    :cond_1
    :goto_2
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 93
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v1, v4, v2

    .line 97
    .local v1, "nModified":I
    if-lez v1, :cond_4

    .line 98
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p1, v2, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "insertText":Ljava/lang/String;
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v4, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 102
    .end local v0    # "insertText":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mText:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "pTextView"    # Landroid/widget/TextView;
    .param p2, "pActionID"    # I
    .param p3, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0xa

    .line 117
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditBox;

    move-result-object v2

    if-ne v2, p1, :cond_3

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->isFullScreenEdit()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mOriginText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mOriginText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 121
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    .line 120
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 129
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 130
    const-string v1, "\n"

    .line 133
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_2

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_2
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 143
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    .line 144
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 146
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 139
    .restart local v1    # "text":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 113
    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pOriginText"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWrapper;->mOriginText:Ljava/lang/String;

    .line 71
    return-void
.end method

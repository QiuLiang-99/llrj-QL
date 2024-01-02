.class final Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setFont(ILjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;F)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontSize:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 246
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$500()Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$index:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 247
    .local v1, "editBox":Lorg/cocos2dx/lib/Cocos2dxEditBox;
    if-eqz v1, :cond_1

    .line 249
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 250
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 266
    .local v2, "tf":Landroid/graphics/Typeface;
    :goto_0
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 267
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontSize:F

    invoke-virtual {v1, v6, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextSize(IF)V

    .line 269
    :cond_0
    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_1
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxEditBoxHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 258
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_2
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 264
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_3
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0
.end method

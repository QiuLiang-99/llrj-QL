.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# static fields
.field private static final HORIZONTAL_ALIGN_CENTER:I = 0x3

.field private static final HORIZONTAL_ALIGN_LEFT:I = 0x1

.field private static final HORIZONTAL_ALIGN_RIGHT:I = 0x2

.field private static final VERTICAL_ALIGN_BOTTOM:I = 0x2

.field private static final VERTICAL_ALIGN_CENTER:I = 0x3

.field private static final VERTICAL_ALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hAlignment"    # Landroid/text/Layout$Alignment;
    .param p4, "textSize"    # F
    .param p5, "paint"    # Landroid/text/TextPaint;
    .param p6, "enableWrap"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 147
    :goto_0
    return-object v3

    .line 113
    :cond_1
    add-int/lit8 v3, p1, 0x1

    int-to-float v11, v3

    .line 114
    .local v11, "actualWidth":F
    add-int/lit8 v3, p2, 0x1

    int-to-float v10, v3

    .line 115
    .local v10, "actualHeight":F
    const/high16 v3, 0x3f800000    # 1.0f

    add-float v12, p4, v3

    .line 117
    .local v12, "fontSize":F
    if-nez p6, :cond_5

    .line 118
    :cond_2
    int-to-float v3, p1

    cmpl-float v3, v11, v3

    if-gtz v3, :cond_3

    int-to-float v3, p2

    cmpl-float v3, v10, v3

    if-lez v3, :cond_4

    .line 119
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    .line 121
    move-object/from16 v0, p5

    invoke-static {p0, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v11, v3

    .line 122
    float-to-int v3, v11

    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p0, v3, v12, v4}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I

    move-result v3

    int-to-float v10, v3

    .line 124
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 125
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_2

    .line 126
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    :cond_4
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    .line 131
    :cond_5
    int-to-float v3, p2

    cmpl-float v3, v10, v3

    if-gtz v3, :cond_6

    int-to-float v3, p1

    cmpl-float v3, v11, v3

    if-lez v3, :cond_4

    .line 132
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    .line 134
    new-instance v2, Landroid/text/StaticLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p5

    move v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 135
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v11, v3

    .line 136
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v10, v3

    .line 138
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_5

    .line 141
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZIIIIFZIZ)Z
    .locals 28
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontTintR"    # I
    .param p4, "fontTintG"    # I
    .param p5, "fontTintB"    # I
    .param p6, "fontTintA"    # I
    .param p7, "alignment"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "stroke"    # Z
    .param p11, "strokeR"    # I
    .param p12, "strokeG"    # I
    .param p13, "strokeB"    # I
    .param p14, "strokeA"    # I
    .param p15, "strokeSize"    # F
    .param p16, "enableWrap"    # Z
    .param p17, "overflow"    # I
    .param p18, "enableBold"    # Z

    .prologue
    .line 159
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 160
    .local v8, "hAlignment":Landroid/text/Layout$Alignment;
    and-int/lit8 v21, p7, 0xf

    .line 161
    .local v21, "horizontalAlignment":I
    packed-switch v21, :pswitch_data_0

    .line 174
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p18

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;IZ)Landroid/text/TextPaint;

    move-result-object v6

    .line 176
    .local v6, "paint":Landroid/text/TextPaint;
    if-eqz p10, :cond_0

    .line 177
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    move/from16 v0, p15

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 181
    :cond_0
    move/from16 v24, p8

    .line 183
    .local v24, "maxWidth":I
    if-gtz v24, :cond_1

    .line 184
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v24, v0

    .line 187
    :cond_1
    const/4 v4, 0x0

    .line 188
    .local v4, "layout":Landroid/text/Layout;
    const/16 v23, 0x0

    .line 189
    .local v23, "layoutWidth":I
    const/16 v22, 0x0

    .line 192
    .local v22, "layoutHeight":I
    const/4 v5, 0x1

    move/from16 v0, p17

    if-ne v0, v5, :cond_5

    if-nez p16, :cond_5

    .line 193
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 194
    .local v7, "widthBoundary":I
    new-instance v4, Landroid/text/StaticLayout;

    .end local v4    # "layout":Landroid/text/Layout;
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 202
    .end local v7    # "widthBoundary":I
    .restart local v4    # "layout":Landroid/text/Layout;
    :goto_1
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v23

    .line 203
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    .line 205
    move/from16 v0, v23

    move/from16 v1, p8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 206
    .local v19, "bitmapWidth":I
    move/from16 v18, v22

    .line 207
    .local v18, "bitmapHeight":I
    if-lez p9, :cond_2

    .line 208
    move/from16 v18, p9

    .line 211
    :cond_2
    const/4 v5, 0x1

    move/from16 v0, p17

    if-ne v0, v5, :cond_3

    if-nez p16, :cond_3

    .line 212
    if-lez p8, :cond_3

    .line 213
    move/from16 v19, p8

    .line 217
    :cond_3
    if-eqz v19, :cond_4

    if-nez v18, :cond_7

    .line 218
    :cond_4
    const/4 v5, 0x0

    .line 254
    :goto_2
    return v5

    .line 163
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "paint":Landroid/text/TextPaint;
    .end local v18    # "bitmapHeight":I
    .end local v19    # "bitmapWidth":I
    .end local v22    # "layoutHeight":I
    .end local v23    # "layoutWidth":I
    .end local v24    # "maxWidth":I
    :pswitch_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 164
    goto :goto_0

    .line 166
    :pswitch_2
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 167
    goto :goto_0

    .line 196
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "paint":Landroid/text/TextPaint;
    .restart local v22    # "layoutHeight":I
    .restart local v23    # "layoutWidth":I
    .restart local v24    # "maxWidth":I
    :cond_5
    const/4 v5, 0x2

    move/from16 v0, p17

    if-ne v0, v5, :cond_6

    .line 197
    move/from16 v0, p2

    int-to-float v13, v0

    move-object/from16 v9, p0

    move/from16 v10, p8

    move/from16 v11, p9

    move-object v12, v8

    move-object v14, v6

    move/from16 v15, p16

    invoke-static/range {v9 .. v15}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;

    .line 199
    :cond_6
    new-instance v4, Landroid/text/StaticLayout;

    .end local v4    # "layout":Landroid/text/Layout;
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move-object/from16 v10, p0

    move-object v11, v6

    move/from16 v12, v24

    move-object v13, v8

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .restart local v4    # "layout":Landroid/text/Layout;
    goto :goto_1

    .line 221
    .restart local v18    # "bitmapHeight":I
    .restart local v19    # "bitmapWidth":I
    :cond_7
    const/16 v25, 0x0

    .line 222
    .local v25, "offsetX":I
    const/4 v5, 0x3

    move/from16 v0, v21

    if-ne v0, v5, :cond_a

    .line 223
    sub-int v5, v19, v23

    div-int/lit8 v25, v5, 0x2

    .line 229
    :cond_8
    :goto_3
    const/16 v26, 0x0

    .line 230
    .local v26, "offsetY":I
    shr-int/lit8 v5, p7, 0x4

    and-int/lit8 v27, v5, 0xf

    .line 231
    .local v27, "verticalAlignment":I
    packed-switch v27, :pswitch_data_1

    .line 241
    :goto_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 242
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v20, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, v25

    int-to-float v5, v0

    move/from16 v0, v26

    int-to-float v9, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    if-eqz p10, :cond_9

    .line 246
    move/from16 v0, p14

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p13

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 247
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 249
    :cond_9
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    move/from16 v0, p6

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 251
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-static/range {v17 .. v17}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 254
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 225
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .end local v26    # "offsetY":I
    .end local v27    # "verticalAlignment":I
    :cond_a
    const/4 v5, 0x2

    move/from16 v0, v21

    if-ne v0, v5, :cond_8

    .line 226
    sub-int v25, v19, v23

    goto :goto_3

    .line 234
    .restart local v26    # "offsetY":I
    .restart local v27    # "verticalAlignment":I
    :pswitch_3
    sub-int v5, v18, v22

    div-int/lit8 v26, v5, 0x2

    .line 235
    goto :goto_4

    .line 237
    :pswitch_4
    sub-int v26, v18, v22

    goto :goto_4

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 231
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getFontSizeAccordingHeight(I)I
    .locals 7
    .param p0, "height"    # I

    .prologue
    .line 310
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 311
    .local v2, "paint":Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    const/4 v4, 0x1

    .line 315
    .local v4, "text_size":I
    const/4 v1, 0x0

    .line 317
    .local v1, "found_desired_size":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 318
    int-to-float v5, v4

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 319
    const-string v3, "SghMNy"

    .line 320
    .local v3, "text":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 322
    add-int/lit8 v4, v4, 0x1

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p0, v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 325
    const/4 v1, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 297
    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 299
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 300
    .local v1, "pixels":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 301
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 306
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "pixels":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "fontSize"    # F

    .prologue
    .line 333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, ""

    .line 341
    :goto_0
    return-object v1

    .line 337
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 338
    .local v0, "paint":Landroid/text/TextPaint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 339
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 341
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 84
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 85
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    const/4 v8, 0x0

    .line 90
    .local v8, "lineCount":I
    const/4 v2, 0x0

    .line 91
    .local v2, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 93
    .local v3, "length":I
    :cond_0
    if-ge v2, v3, :cond_1

    .line 94
    const/4 v4, 0x1

    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v9

    .line 95
    .local v9, "numOfChars":I
    add-int/2addr v2, v9

    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 98
    if-nez v9, :cond_0

    .line 103
    .end local v9    # "numOfChars":I
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v7, v1, v4

    .line 105
    .local v7, "actualHeight":F
    int-to-float v1, v8

    mul-float/2addr v1, v7

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    return v1
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 287
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 288
    .local v0, "pixels":[B
    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 292
    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;IZ)Landroid/text/TextPaint;
    .locals 7
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "enableBold"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 258
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 259
    .local v1, "paint":Landroid/text/TextPaint;
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 260
    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 263
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 267
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p2, :cond_1

    .line 277
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.class public Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;
.super Lcz/msebera/android/httpclient/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->response:Lcz/msebera/android/httpclient/HttpResponse;

    .line 52
    return-void
.end method


# virtual methods
.method public getResponse()Lcz/msebera/android/httpclient/HttpResponse;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->response:Lcz/msebera/android/httpclient/HttpResponse;

    return-object v0
.end method

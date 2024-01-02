.class public Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;
.super Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;
.source "HttpAuthenticator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V
    .locals 0
    .param p1, "log"    # Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    .line 46
    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 1
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p3, "authStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p4, "authState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p5, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .prologue
    .line 58
    invoke-virtual/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

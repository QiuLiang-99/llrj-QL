.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;
.super Ljava/lang/Object;
.source "SSLContexts.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 58
    .local v1, "sslcontext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/security/KeyManagementException;
    new-instance v2, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createSystemDefault()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v1

    .line 79
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    goto :goto_0
.end method

.method public static custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;-><init>()V

    return-object v0
.end method

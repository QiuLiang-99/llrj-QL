.class public Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnRoutePNames;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

.field public static final NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 80
    const-string v1, "Parameters"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v1, "http.route.default-proxy"

    .line 82
    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 83
    .local v0, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v0, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_0
    return-object v0
.end method

.method public static getForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 118
    const-string v1, "Parameters"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v1, "http.route.forced-route"

    .line 120
    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 121
    .local v0, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    if-eqz v0, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :cond_0
    return-object v0
.end method

.method public static getLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 157
    const-string v1, "Parameters"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const-string v1, "http.route.local-address"

    .line 159
    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 161
    .local v0, "local":Ljava/net/InetAddress;
    return-object v0
.end method

.method public static setDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .prologue
    .line 102
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 104
    return-void
.end method

.method public static setForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .prologue
    .line 140
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 142
    return-void
.end method

.method public static setLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 1
    .param p0, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p1, "local"    # Ljava/net/InetAddress;

    .prologue
    .line 173
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 175
    return-void
.end method

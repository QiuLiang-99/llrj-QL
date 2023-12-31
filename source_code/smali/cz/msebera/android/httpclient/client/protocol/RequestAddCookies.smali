.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 73
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 31
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v27, "HTTP request"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v27, "HTTP context"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v15

    .line 82
    .local v15, "method":Ljava/lang/String;
    const-string v27, "CONNECT"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v3

    .line 89
    .local v3, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v8

    .line 90
    .local v8, "cookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    if-nez v8, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    const-string v28, "Cookie store not specified in HTTP context"

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v21

    .line 97
    .local v21, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    if-nez v21, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    const-string v28, "CookieSpec registry not specified in HTTP context"

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v25

    .line 104
    .local v25, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v25, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    const-string v28, "Target host not set in the context"

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v24

    .line 111
    .local v24, "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    if-nez v24, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    const-string v28, "Connection route not set in the context"

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v4

    .line 117
    .local v4, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, "policy":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 119
    const-string v18, "default"

    .line 121
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CookieSpec selected: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 125
    :cond_7
    const/16 v22, 0x0

    .line 126
    .local v22, "requestURI":Ljava/net/URI;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move-object/from16 v27, p1

    .line 127
    check-cast v27, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface/range {v27 .. v27}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v22

    .line 134
    :goto_1
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 135
    .local v17, "path":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v25 .. v25}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, "hostName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v19

    .line 137
    .local v19, "port":I
    if-gez v19, :cond_8

    .line 138
    invoke-interface/range {v24 .. v24}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v19

    .line 141
    :cond_8
    new-instance v6, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    if-ltz v19, :cond_b

    .line 144
    .end local v19    # "port":I
    :goto_3
    invoke-static/range {v17 .. v17}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 145
    .end local v17    # "path":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v24 .. v24}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isSecure()Z

    move-result v27

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v6, v13, v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 148
    .local v6, "cookieOrigin":Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    .line 149
    .local v20, "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    if-nez v20, :cond_d

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unsupported cookie policy: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    .end local v6    # "cookieOrigin":Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .end local v13    # "hostName":Ljava/lang/String;
    .end local v20    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    :cond_9
    :try_start_0
    new-instance v23, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22    # "requestURI":Ljava/net/URI;
    .local v23, "requestURI":Ljava/net/URI;
    move-object/from16 v22, v23

    .line 132
    .end local v23    # "requestURI":Ljava/net/URI;
    .restart local v22    # "requestURI":Ljava/net/URI;
    goto :goto_1

    .line 134
    :cond_a
    const/16 v17, 0x0

    goto :goto_2

    .line 141
    .restart local v13    # "hostName":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v19    # "port":I
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    .line 144
    .end local v19    # "port":I
    :cond_c
    const-string v17, "/"

    goto :goto_4

    .line 156
    .end local v17    # "path":Ljava/lang/String;
    .restart local v6    # "cookieOrigin":Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .restart local v20    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    :cond_d
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v7

    .line 158
    .local v7, "cookieSpec":Lcz/msebera/android/httpclient/cookie/CookieSpec;
    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v9

    .line 160
    .local v9, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v14, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 162
    .local v16, "now":Ljava/util/Date;
    const/4 v10, 0x0

    .line 163
    .local v10, "expired":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_e
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 164
    .local v5, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 165
    invoke-interface {v7, v5, v6}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " match "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 169
    :cond_f
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 172
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expired"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 175
    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 181
    .end local v5    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    :cond_12
    if-eqz v10, :cond_13

    .line 182
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Lcz/msebera/android/httpclient/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 185
    :cond_13
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_14

    .line 186
    invoke-interface {v7, v14}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 187
    .local v12, "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcz/msebera/android/httpclient/Header;

    .line 188
    .local v11, "header":Lcz/msebera/android/httpclient/Header;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_6

    .line 192
    .end local v11    # "header":Lcz/msebera/android/httpclient/Header;
    .end local v12    # "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    :cond_14
    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersion()I

    move-result v26

    .line 193
    .local v26, "ver":I
    if-lez v26, :cond_15

    .line 194
    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v11

    .line 195
    .restart local v11    # "header":Lcz/msebera/android/httpclient/Header;
    if-eqz v11, :cond_15

    .line 197
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 203
    .end local v11    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_15
    const-string v27, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v27, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    .end local v6    # "cookieOrigin":Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .end local v7    # "cookieSpec":Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .end local v9    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .end local v10    # "expired":Z
    .end local v13    # "hostName":Ljava/lang/String;
    .end local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .end local v16    # "now":Ljava/util/Date;
    .end local v20    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .end local v26    # "ver":I
    :catch_0
    move-exception v27

    goto/16 :goto_1
.end method

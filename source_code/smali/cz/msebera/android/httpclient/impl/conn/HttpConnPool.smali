.class Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "HttpConnPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool",
        "<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/OperatedClientConnection;",
        "Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final tunit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "log"    # Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    .param p2, "connOperator"    # Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .param p3, "defaultMaxPerRoute"    # I
    .param p4, "maxTotal"    # I
    .param p5, "timeToLive"    # J
    .param p7, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;)V

    invoke-direct {p0, v0, p3, p4}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 59
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 60
    iput-wide p5, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeToLive:J

    .line 61
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->tunit:Ljava/util/concurrent/TimeUnit;

    .line 62
    return-void
.end method


# virtual methods
.method protected createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 9
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "conn"    # Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .prologue
    .line 66
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "id":Ljava/lang/String;
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeToLive:J

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->tunit:Ljava/util/concurrent/TimeUnit;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v1
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    check-cast p2, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    return-object v0
.end method

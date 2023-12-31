.class final Lcom/cocos/analytics/b/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase;

.field private static b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static declared-synchronized a(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const-class v2, Lcom/cocos/analytics/b/f;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    const-string v1, "queryRecordsByCount: database wasn\'t initialized!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "queryRecordsByCount: database wasn\'t open!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_3
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM event_table limit ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "100"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/cocos/analytics/b/f;->b:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "value"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v6, Lcom/cocos/analytics/b/f;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/cocos/analytics/b/f;->a([B)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "query log record, row id is :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_8
    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    :try_start_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v0

    :cond_5
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method private static a([B)Lorg/json/JSONObject;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static declared-synchronized a(Ljava/lang/String;[B)V
    .locals 5

    const-class v1, Lcom/cocos/analytics/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-string v0, "insertOneRecordToTable: database wasn\'t initialized!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "insertOneRecordToTable: database wasn\'t open!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/cocos/analytics/b/f;->e()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "what"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_3
    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static declared-synchronized a()Z
    .locals 5

    const/4 v0, 0x0

    const-class v2, Lcom/cocos/analytics/b/f;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/cocos/analytics/CAAgent;->sharedInstance()Lcom/cocos/analytics/CAAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cocos/analytics/CAAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Please init sdk first!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/cocos_analytics.db"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "create SQLite db file failed!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "open or create table in database ..."

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS event_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, what char, value BLOB);"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized b(I)V
    .locals 3

    const-class v1, Lcom/cocos/analytics/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-string v0, "delOneRecord: database wasn\'t initialized!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "delOneRecord: database wasn\'t open!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delete from event_table where _id  = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static declared-synchronized b()Z
    .locals 4

    const-class v1, Lcom/cocos/analytics/b/f;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDataBaseOpen : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cocos/analytics/c/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized c()I
    .locals 5

    const/4 v0, 0x0

    const-class v2, Lcom/cocos/analytics/b/f;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    const-string v1, "queryRecordsCount: database wasn\'t initialized!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "queryRecordsCount: database wasn\'t open!"

    invoke-static {v1}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_3
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT count(*) FROM event_table"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v1

    :try_start_9
    invoke-static {v1}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method static declared-synchronized d()V
    .locals 4

    const-class v1, Lcom/cocos/analytics/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-string v0, "delRecordsByCount: database wasn\'t initialized!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "delRecordsByCount: database wasn\'t open!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    sget-object v0, Lcom/cocos/analytics/b/f;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/cocos/analytics/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from event_table where _id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cocos/analytics/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static declared-synchronized e()V
    .locals 10

    const/4 v8, 0x0

    const-class v9, Lcom/cocos/analytics/b/f;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-string v0, "queryMaxDel: database wasn\'t initialized!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "queryMaxDel: database wasn\'t open!"

    invoke-static {v0}, Lcom/cocos/analytics/c/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "event_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    :try_start_4
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v2, v0, -0x3e8

    const/4 v0, 0x0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/cocos/analytics/b/f;->b(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v0, v0, 0x1

    if-le v0, v2, :cond_3

    :cond_4
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_8
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v0, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/cocos/analytics/b/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/cocos/analytics/b/f;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/cocos/analytics/c/b;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

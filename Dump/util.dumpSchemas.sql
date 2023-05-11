-- https://dev.mysql.com/doc/mysql-shell/8.0/en/mysql-shell-utilities-dump-instance-schema.html

-- util.dumpSchemas(schemas, outputUrl[, options])

-- shell-js> util.dumpSchemas(["world"], "worlddump", {
--        > "osBucketName": "hanna-bucket", "osNamespace": "idx28w1ckztq", 
--        > "ocimds": "true", "compatibility": ["strip_definers", "strip_restricted_grants"]})


-- **Important: The util.dump* library are executed in MySQL Shell by Java Script interpreter, so to acces this option type \js 
-- **Important 2: the backup of MySQL Shell made by util.dump*, create the backup in a folder including all data and metadata in separate files

--This example create a backup of schema/database who call "MyDatabaseName" in C:\Temp with backup name "MybackupDatabaseName", compressed using 4 thread, each thread is one cpu core

util.dumpSchemas(["MyDatabaseName"], "C:/Temp/MybackupDatabaseName/", {dryRun:false, showProgress:true, consistent:false, compression:"zstd", threads:4}) -- Windows

util.dumpSchemas(["MyDatabaseName"], "/tmp/MybackupDatabaseName/", {dryRun:false, showProgress:true, consistent:false, compression:"zstd", threads:4}) -- Linux




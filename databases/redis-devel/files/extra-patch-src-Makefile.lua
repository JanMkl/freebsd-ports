--- src/Makefile.orig	2024-01-29 04:06:19 UTC
+++ src/Makefile
@@ -25,7 +25,7 @@
 	endif
 	REDIS_LDFLAGS+=-O3 -flto
 endif
-DEPENDENCY_TARGETS=hiredis linenoise lua hdr_histogram fpconv
+DEPENDENCY_TARGETS=hiredis linenoise hdr_histogram fpconv
 NODEPS:=clean distclean
 
 # Default settings
@@ -116,8 +116,8 @@
 # Override default settings if possible
 -include .make-settings
 
-FINAL_CFLAGS=$(STD) $(WARN) $(OPT) $(DEBUG) $(CFLAGS) $(REDIS_CFLAGS)
-FINAL_LDFLAGS=$(LDFLAGS) $(REDIS_LDFLAGS) $(DEBUG)
+FINAL_CFLAGS=$(STD) $(WARN) $(OPT) $(DEBUG) $(CFLAGS)
+FINAL_LDFLAGS=$(LDFLAGS) $(DEBUG)
 FINAL_LIBS=-lm
 DEBUG=-g -ggdb
 
@@ -226,7 +226,7 @@
 endif
 
 # Include paths to dependencies
-FINAL_CFLAGS+= -I../deps/hiredis -I../deps/linenoise -I../deps/lua/src -I../deps/hdr_histogram -I../deps/fpconv
+FINAL_CFLAGS+= -I../deps/hiredis -I../deps/linenoise -I../deps/hdr_histogram -I../deps/fpconv
 
 # Determine systemd support and/or build preference (defaulting to auto-detection)
 BUILD_WITH_SYSTEMD=no
@@ -317,6 +317,9 @@
     endef
 endif
 
+FINAL_CFLAGS+=-I${PREFIX}/include/lua51
+FINAL_LIBS+= -L${PREFIX}/lib -llua-5.1
+
 REDIS_CC=$(QUIET_CC)$(CC) $(FINAL_CFLAGS)
 REDIS_LD=$(QUIET_LINK)$(CC) $(FINAL_LDFLAGS)
 REDIS_INSTALL=$(QUIET_INSTALL)$(INSTALL)
@@ -346,6 +349,7 @@
 REDIS_SERVER_NAME=redis-server$(PROG_SUFFIX)
 REDIS_SENTINEL_NAME=redis-sentinel$(PROG_SUFFIX)
 REDIS_SERVER_OBJ=threads_mngr.o adlist.o quicklist.o ae.o anet.o dict.o server.o sds.o zmalloc.o lzf_c.o lzf_d.o pqsort.o zipmap.o sha1.o ziplist.o release.o networking.o util.o object.o db.o replication.o rdb.o t_string.o t_list.o t_set.o t_zset.o t_hash.o config.o aof.o pubsub.o multi.o debug.o sort.o intset.o syncio.o cluster.o cluster_legacy.o crc16.o endianconv.o slowlog.o eval.o bio.o rio.o rand.o memtest.o syscheck.o crcspeed.o crc64.o bitops.o sentinel.o notify.o setproctitle.o blocked.o hyperloglog.o latency.o sparkline.o redis-check-rdb.o redis-check-aof.o geo.o lazyfree.o module.o evict.o expire.o geohash.o geohash_helper.o childinfo.o defrag.o siphash.o rax.o t_stream.o listpack.o localtime.o lolwut.o lolwut5.o lolwut6.o acl.o tracking.o socket.o tls.o sha256.o timeout.o setcpuaffinity.o monotonic.o mt19937-64.o resp_parser.o call_reply.o script_lua.o script.o functions.o function_lua.o commands.o strl.o connection.o unix.o logreqres.o
+REDIS_SERVER_OBJ+=fpconv.o lua_bit.o lua_cjson.o lua_cmsgpack.o lua_struct.o strbuf.o
 REDIS_CLI_NAME=redis-cli$(PROG_SUFFIX)
 REDIS_CLI_OBJ=anet.o adlist.o dict.o redis-cli.o zmalloc.o release.o ae.o redisassert.o crcspeed.o crc64.o siphash.o crc16.o monotonic.o cli_common.o mt19937-64.o strl.o cli_commands.o
 REDIS_BENCHMARK_NAME=redis-benchmark$(PROG_SUFFIX)
@@ -400,7 +404,7 @@
 
 # redis-server
 $(REDIS_SERVER_NAME): $(REDIS_SERVER_OBJ)
-	$(REDIS_LD) -o $@ $^ ../deps/hiredis/libhiredis.a ../deps/lua/src/liblua.a ../deps/hdr_histogram/libhdrhistogram.a ../deps/fpconv/libfpconv.a $(FINAL_LIBS)
+	$(REDIS_LD) -o $@ $^ ../deps/hiredis/libhiredis.a ../deps/hdr_histogram/libhdrhistogram.a ../deps/fpconv/libfpconv.a $(FINAL_LIBS)
 
 # redis-sentinel
 $(REDIS_SENTINEL_NAME): $(REDIS_SERVER_NAME)

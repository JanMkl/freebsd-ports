--- content/browser/interest_group/header_direct_from_seller_signals.cc.orig	2024-02-03 15:42:55 UTC
+++ content/browser/interest_group/header_direct_from_seller_signals.cc
@@ -58,7 +58,11 @@ HeaderDirectFromSellerSignals::Result::Result(
 
 HeaderDirectFromSellerSignals::Result::~Result() = default;
 
+#if defined(__clang__) && (__clang_major__ >= 16)
 HeaderDirectFromSellerSignals::HeaderDirectFromSellerSignals() = default;
+#else
+HeaderDirectFromSellerSignals::HeaderDirectFromSellerSignals() {}
+#endif
 
 HeaderDirectFromSellerSignals::~HeaderDirectFromSellerSignals() {
   base::UmaHistogramCounts10000(

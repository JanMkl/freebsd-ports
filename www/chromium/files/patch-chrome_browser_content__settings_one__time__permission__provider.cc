--- chrome/browser/content_settings/one_time_permission_provider.cc.orig	2024-01-30 07:53:34 UTC
+++ chrome/browser/content_settings/one_time_permission_provider.cc
@@ -231,8 +231,13 @@ void OneTimePermissionProvider::OnSuspend() {
 
       while (rule_iterator && rule_iterator->HasNext()) {
         auto rule = rule_iterator->Next();
+#if defined(__clang__) && (__clang_major__ >= 16)
         patterns_to_delete.emplace_back(setting_type, rule->primary_pattern,
                                         rule->secondary_pattern);
+#else
+        patterns_to_delete.emplace_back(ContentSettingEntry{setting_type, rule->primary_pattern,
+                                        rule->secondary_pattern});
+#endif
         permissions::PermissionUmaUtil::RecordOneTimePermissionEvent(
             setting_type,
             permissions::OneTimePermissionEvent::EXPIRED_ON_SUSPEND);
@@ -334,8 +339,13 @@ void OneTimePermissionProvider::DeleteEntriesMatchingG
     auto rule = rule_iterator->Next();
     if (rule->primary_pattern.Matches(origin_gurl) &&
         rule->secondary_pattern.Matches(origin_gurl)) {
+#if defined(__clang__) && (__clang_major__ >= 16)
       patterns_to_delete.emplace_back(
           content_setting_type, rule->primary_pattern, rule->secondary_pattern);
+#else
+      patterns_to_delete.emplace_back(
+          ContentSettingEntry{content_setting_type, rule->primary_pattern, rule->secondary_pattern});
+#endif
       permissions::PermissionUmaUtil::RecordOneTimePermissionEvent(
           content_setting_type, trigger_event);
     }

-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yasr_general_options', 'yasr-version', 'yasr_plugin_imported', 'postratings_max', 'yasr_multiset_options', 'yasr_style_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'yasr_wppr_import_query_number', 'yasr_kksr_import_query_number', 'yasr_rmp_import_query_number', 'yasr_mr_import_query_number', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yasr_overall_rating', 'yasr_review_type', 'yasr_multiset_author_votes', 'yasr_post_is_review', 'yasr_schema_additional_fields', 'yasr_auto_insert_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('yasr_overall_rating', 'yasr_review_type', 'yasr_multiset_author_votes', 'yasr_post_is_review', 'yasr_schema_additional_fields', 'yasr_auto_insert_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('yasr_overall_rating', 'yasr_review_type', 'yasr_multiset_author_votes', 'yasr_post_is_review', 'yasr_schema_additional_fields', 'yasr_auto_insert_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yasr_overall_rating', 'yasr_review_type', 'yasr_multiset_author_votes', 'yasr_post_is_review', 'yasr_schema_additional_fields', 'yasr_auto_insert_disabled');


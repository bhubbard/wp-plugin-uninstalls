-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hyve_lite_logger_flag', 'hyve_settings', 'hyve_qdrant_status', 'hyve_qdrant_migration', 'hyve_lite_install', 'hyve_install', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'hyve_messages_count', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'hyve_message_%';
DELETE FROM wp_options WHERE option_name LIKE '%_total';
DELETE FROM wp_options WHERE option_name LIKE 'hyve_moderate_post_%';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hyve_moderation_review', '_hyve_added', '_hyve_needs_update', '_hyve_moderation_failed', '_hyve_thread_data', '_hyve_thread_id', '_hyve_post_processing', '_hyve_thread_count', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hyve_moderation_review', '_hyve_added', '_hyve_needs_update', '_hyve_moderation_failed', '_hyve_thread_data', '_hyve_thread_id', '_hyve_post_processing', '_hyve_thread_count', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hyve_moderation_review', '_hyve_added', '_hyve_needs_update', '_hyve_moderation_failed', '_hyve_thread_data', '_hyve_thread_id', '_hyve_post_processing', '_hyve_thread_count', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hyve_moderation_review', '_hyve_added', '_hyve_needs_update', '_hyve_moderation_failed', '_hyve_thread_data', '_hyve_thread_id', '_hyve_post_processing', '_hyve_thread_count', 'themeisle_sdk_dismissed_notice_black_friday');


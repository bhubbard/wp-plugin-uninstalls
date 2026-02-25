-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_library_organizer_pro_license_data', 'wpuxss_eml_version', 'wpuxss_eml_taxonomies', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'mlo_optimole_data', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_created_at', '_modified_at', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_created_at', '_modified_at', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_created_at', '_modified_at', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_created_at', '_modified_at', '_wp_attachment_image_alt', 'themeisle_sdk_dismissed_notice_black_friday');


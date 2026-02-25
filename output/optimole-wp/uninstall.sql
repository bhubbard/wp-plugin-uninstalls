-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optml_current_domain', 'optml_notice_optin', 'optml_notice_hide_upg', 'optimole_wp_install', 'optml_has_offloading_enabled_on_upgrade', 'optml_dismissed_conflicts', 'optimole_wp_logger_flag', 'optimole_reference_key', 'heateor_sss', 'autoptimize_imgopt_settings', 'perfmatters_options', 'optml_process_meta', 'themeisle_sdk_notifications', 'otter_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'optml_fresh_install', 'optml_cache_lock', 'optml_cache_lock_assets', 'optimole_sample_image', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_optml_pending_rename', '_wp_attached_file', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_optml_pending_rename', '_wp_attached_file', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_optml_pending_rename', '_wp_attached_file', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_optml_pending_rename', '_wp_attached_file', 'themeisle_sdk_dismissed_notice_black_friday');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosvi_options', 'woosvi_options_settings_imported', 'woosvi_options_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', 'woosvi_slug', '_checkbox_svipro_enabled', '_product_attributes', 'color', 'image', 'label', 'svi_notice_dismissed_1');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', 'woosvi_slug', '_checkbox_svipro_enabled', '_product_attributes', 'color', 'image', 'label', 'svi_notice_dismissed_1');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', 'woosvi_slug', '_checkbox_svipro_enabled', '_product_attributes', 'color', 'image', 'label', 'svi_notice_dismissed_1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', 'woosvi_slug', '_checkbox_svipro_enabled', '_product_attributes', 'color', 'image', 'label', 'svi_notice_dismissed_1');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woosvi_slug_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woosvi_slug_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woosvi_slug_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woosvi_slug_%';


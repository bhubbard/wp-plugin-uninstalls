-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smush_deactivated', 'skip-smush-setup', 'wp_smush_pre_3_22_site', 'wp-smush-show_upgrade_modal', 'wp-smush-api_message', 'wp-smush-settings_updated', 'wp-smush-networkwide', 'wp-smush-show-new-feature-hotspot', 'dir_smush_stats', 'wp-smush-dismissed-notices', 'wp-smush-hide_upgrade_notice', 'wp-smush-hide_s3support_alert', 'wp_smush_event_times', 'wp-smush-last_run_sync', 'wp-smush-preset_configs', 'wpmudev_apikey', 'medium_large_size_w', 'medium_large_size_h', 'wp_smush_show_connected_modal', 'wp_smush_api_auth', 'wp-smush-version', 'wp-smush-install-type', 'wp-smush-hide_blackfriday_modal', 'wp-smush-transparent_png', 'wp-smush-show-black-friday', 'wp-smush-run_recheck', 'wp-smush-hide_pagespeed_suggestion', 'wp-smush-hide_smush_welcome', 'wdev_logger_wp-smush-pro', 'wdev_logger_wp-smushit', 'wp-smush-webp_hide_wizard', 'wp-smush-png2jpg-rewrite-rules-flushed', 'wp_smush_scan_slice_size', 'wp-smush-image_sizes', 'wp-smush-resize_sizes', 'wp-smush-cdn_status', 'wp-smush-lazy_load', 'wp-smush-cdn-advanced-settings', 'wp-smush-hide-tutorials', 'smush_global_stats', 'wp-smush-resmush-list', 'allowedthemes', 'ftp_credentials', 'wp-smush-hide_update_info', 'wp_smush_scan', 'wp-smush-scan-step', 'wp-smush-plugin-activated', 'wp-smush-conflict_check', 'wp-smush-show-dir-scan-notice', 'wp-smush-dir-scan-failed-items');
DELETE FROM wp_options WHERE option_name IN ('wp-smush-dir-scan-skipped-items', 'wp_smush_skip_image_sizes_recheck');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'wp-smush-restore-%';
DELETE FROM wp_options WHERE option_name LIKE 'smush-in-progress-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-smush-resize_savings', 'wp-smush-ignore-bulk', 'wp-smush-pngjpg_savings', 'wp-smush-lossy', 'dismissed_wp_pointers', '_wp_attachment_backup_sizes', 'wp-smush-original_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-smush-resize_savings', 'wp-smush-ignore-bulk', 'wp-smush-pngjpg_savings', 'wp-smush-lossy', 'dismissed_wp_pointers', '_wp_attachment_backup_sizes', 'wp-smush-original_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-smush-resize_savings', 'wp-smush-ignore-bulk', 'wp-smush-pngjpg_savings', 'wp-smush-lossy', 'dismissed_wp_pointers', '_wp_attachment_backup_sizes', 'wp-smush-original_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-smush-resize_savings', 'wp-smush-ignore-bulk', 'wp-smush-pngjpg_savings', 'wp-smush-lossy', 'dismissed_wp_pointers', '_wp_attachment_backup_sizes', 'wp-smush-original_file');


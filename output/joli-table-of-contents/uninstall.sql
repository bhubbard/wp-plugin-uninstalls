-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joli_toc_rating_time', 'joli_toc_gopro_time', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'joli_toc_settings', 'joli_toc_use_v1', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('joli_toc_post_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('joli_toc_post_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('joli_toc_post_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('joli_toc_post_settings');


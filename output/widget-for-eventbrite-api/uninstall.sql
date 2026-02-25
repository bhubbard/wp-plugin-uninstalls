-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget-for-eventbrite-api-settings', 'widget-for-eventbrite-api-version', 'widget-for-eventbrite-api-settings-api', 'wfea_transients', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_x_wfea_transients', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '% _bak';
DELETE FROM wp_options WHERE option_name LIKE '%_bak';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfea_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfea_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfea_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfea_dismissed_notices');


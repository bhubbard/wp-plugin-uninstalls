-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('divipreloader_opts', 'r_notice_data', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux-framework-tracking', 'redux_version_upgraded_from', 'redux_support_hash', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'redux_tracking_cache', 'redux-extensions-fetch', 'redux_contributors', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pmb_activation', 'pmb_rechecked_on_upgrade', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_dashboard_news';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmb_title', 'pmb_buttons');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmb_title', 'pmb_buttons');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmb_title', 'pmb_buttons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmb_title', 'pmb_buttons');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_dashboard_news';


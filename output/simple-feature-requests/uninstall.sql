-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'sfr_flush_rewrite_rules_flag', 'sfr_status_slug_tracker', 'sfr_db_names_updated', 'sfr_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'sfr_notices', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_via', '_attachments', '_wp_page_template', 'sfr_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_via', '_attachments', '_wp_page_template', 'sfr_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_via', '_attachments', '_wp_page_template', 'sfr_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_via', '_attachments', '_wp_page_template', 'sfr_status');


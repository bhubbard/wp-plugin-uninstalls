-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcct_tabs', 'wcct_position', 'wcct_exclude_categories', 'wcct_exclude_tags', 'wcct_exclude_products', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcct_tabs');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcct_tabs');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcct_tabs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcct_tabs');


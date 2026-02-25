-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%role_based_taxes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rps_included_categories', '_rps_included_products', '_rps_included_user_roles', '_rps_included_users', '_rps_is_suspended');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rps_included_categories', '_rps_included_products', '_rps_included_user_roles', '_rps_included_users', '_rps_is_suspended');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rps_included_categories', '_rps_included_products', '_rps_included_user_roles', '_rps_included_users', '_rps_is_suspended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rps_included_categories', '_rps_included_products', '_rps_included_user_roles', '_rps_included_users', '_rps_is_suspended');


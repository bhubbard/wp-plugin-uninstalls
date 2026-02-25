-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emc_setting_countries', 'emc_setting_number', 'emc_setting_welcome', 'emc_setting_account_sid', 'emc_setting_auth_token', 'fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes');


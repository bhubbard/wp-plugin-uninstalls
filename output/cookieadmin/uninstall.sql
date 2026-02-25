-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookieadmin_version', 'cookieadmin_law', 'cookieadmin_consent_settings', 'cookieadmin_pro_scanner', 'cookieadmin_scan', 'cookieadmin_first_scan', 'cookieadmin_settings', 'cookieadmin_consent_purge', 'softaculous_plugin_update_notice', 'cookieadmin_auto_scan_in_progress', 'update_plugins');


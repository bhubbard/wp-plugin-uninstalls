-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtsec_api_key', 'wtsec_am_installed_file', 'wtsec_waf_installed_file', 'wtotem_api_key', 'wtotem_am_installed_file', 'wtotem_waf_installed_file', 'active_sitewide_plugins', 'auto_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wtsec_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtotem_%';


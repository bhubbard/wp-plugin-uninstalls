-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nscwto_plugin_settings');
DELETE FROM wp_options WHERE option_name LIKE '%plugin_settings';


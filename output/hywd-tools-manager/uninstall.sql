-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hywd_plugin_api_info');
DELETE FROM wp_options WHERE option_name LIKE 'license-%';


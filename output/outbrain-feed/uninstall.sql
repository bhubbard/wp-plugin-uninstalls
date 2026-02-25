-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obfeed_plugin_mode', 'obfeed_plugin_status');


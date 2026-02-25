-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codingfreaks_plugin_settings', 'codingfreaks_ping_notice');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urlive_plugin_options', 'urlive_plugin_paste_code');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('capture_heartrails_plugin', 'capture_heartrails_plugin_template', 'capture_heartrails_plugin_option');


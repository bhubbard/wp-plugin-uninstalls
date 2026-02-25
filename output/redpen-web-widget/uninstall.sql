-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redpen_option_name', 'widget_Id', 'redpen_plugin_notice');


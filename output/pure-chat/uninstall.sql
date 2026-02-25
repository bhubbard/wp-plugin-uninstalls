-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('purechat_plugin_ver', 'purechat_widget_code', 'purechat_widget_name');


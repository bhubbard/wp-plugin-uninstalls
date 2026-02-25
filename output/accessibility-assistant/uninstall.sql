-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accessibility_shopid', 'accessibility_primaryid', 'accessibility_install', 'my_plugin_selected_language', 'accessibility_do_redirect', 'ada_uninstall_reason', 'accessibility_tokken', 'accessibility_url', 'accessibility_plan');
DELETE FROM wp_options WHERE option_name LIKE 'accessibility_widget_backup_%';
DELETE FROM wp_options WHERE option_name LIKE 'accessibility_widget_data_%';


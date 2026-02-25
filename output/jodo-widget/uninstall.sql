-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwcp_jodo_widget_apikey', 'jwcp_jodo_widget_servicekey', 'jwcp_jodo_widget_target', 'jwcp_jodo_widget_visible', 'jwcp_jodo_widget_display', 'jwcp_jodo_widget_theme', 'settings_errors');


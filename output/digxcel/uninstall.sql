-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digxcel_cookie_widget_enabled', 'digxcel_cookie_widget_key', 'digxcel_key');


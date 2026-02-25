-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options');
DELETE FROM wp_options WHERE option_name LIKE 'dash_%';


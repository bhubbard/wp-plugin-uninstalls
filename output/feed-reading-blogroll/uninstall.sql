-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedreading_blogroll_settings', 'widget_feedreadingblogroll', 'update_plugins');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_widget_1');
DELETE FROM wp_options WHERE option_name LIKE 'custom_widget_%';


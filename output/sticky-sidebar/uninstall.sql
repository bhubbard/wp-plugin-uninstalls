-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ri_sticky_widget_id');
DELETE FROM wp_options WHERE option_name LIKE 'ri_sticky_widget_%';


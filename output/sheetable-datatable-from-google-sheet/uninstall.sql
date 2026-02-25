-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sheetable_install_time', 'sheetable_settings', 'sheetable_performance_settings');
DELETE FROM wp_options WHERE option_name LIKE 'sheetable_performance_%';


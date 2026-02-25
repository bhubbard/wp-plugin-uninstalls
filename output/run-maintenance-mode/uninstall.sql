-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qmmode_enable_maintenance', 'qmmode_custom_message', 'qmmode_custom_title');


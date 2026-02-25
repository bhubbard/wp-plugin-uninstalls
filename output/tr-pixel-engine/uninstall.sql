-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awou_settings', 'awou_snapshot');
DELETE FROM wp_options WHERE option_name LIKE 'awou_%';


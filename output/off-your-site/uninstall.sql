-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('turn_off_web', 'noti_maintenance', 'custom_maintenance');


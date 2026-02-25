-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adb_status', 'adb_display_status', 'adb_display_message', 'adb_display_image');


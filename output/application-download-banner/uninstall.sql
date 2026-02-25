-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adb_link_background_color', 'adb_link_text_color', 'adb_link_googleplay');


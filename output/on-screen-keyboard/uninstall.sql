-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('on_screen_keyboard_version_field', 'on_screen_keyboard_ppposts_field');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('info_email', 'info_phone', 'info_clock', 'add_menu_to_replace', 'pixel_width', 'menu_position', 'menu_label');


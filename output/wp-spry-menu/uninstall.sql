-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parent_border_width', 'child_border_width', 'wp_spry_menu_themes');


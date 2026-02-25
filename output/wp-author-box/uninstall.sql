-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpab_background', 'wpab_font_color', 'wpab_background_hover', 'wpab_font_color_hover');


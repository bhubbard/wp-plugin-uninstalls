-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jzdv_bg_color', 'jzdv_font_color', 'jzdv_font_size');


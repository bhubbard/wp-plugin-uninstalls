-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('svz_font_name', 'svz_font_size', 'svz_background_color');


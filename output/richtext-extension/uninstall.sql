-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtex_underline_active', 'rtex_clear_format_active');
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_thickness_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_opacity_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_title_%';


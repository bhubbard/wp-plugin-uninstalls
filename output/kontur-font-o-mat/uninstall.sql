-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kntrfnt_kntrfntmt_active_', 'kntrfnt_load_fonts', 'kntrfnt_load_fonts_active', 'kntrfnt_clear_format_active', 'kntrfnt_underline_active');
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_fontfamily_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_class_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_title_%';


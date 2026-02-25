-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pt_uc_google_apikey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('time_color', 'time_font_family', 'time_font_size', 'clock_type', 'time_font_weight', 'analog_time_color', 'analog_clock_color_radius', 'timezone_offset', 'analog_clock_border_width', 'analog_clock_border_style', 'analog_clock_border_color', 'hide_tittle_option', 'clock_type_dst', 'template_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('time_color', 'time_font_family', 'time_font_size', 'clock_type', 'time_font_weight', 'analog_time_color', 'analog_clock_color_radius', 'timezone_offset', 'analog_clock_border_width', 'analog_clock_border_style', 'analog_clock_border_color', 'hide_tittle_option', 'clock_type_dst', 'template_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('time_color', 'time_font_family', 'time_font_size', 'clock_type', 'time_font_weight', 'analog_time_color', 'analog_clock_color_radius', 'timezone_offset', 'analog_clock_border_width', 'analog_clock_border_style', 'analog_clock_border_color', 'hide_tittle_option', 'clock_type_dst', 'template_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('time_color', 'time_font_family', 'time_font_size', 'clock_type', 'time_font_weight', 'analog_time_color', 'analog_clock_color_radius', 'timezone_offset', 'analog_clock_border_width', 'analog_clock_border_style', 'analog_clock_border_color', 'hide_tittle_option', 'clock_type_dst', 'template_id');


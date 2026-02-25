-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nahiroimap_country_option', 'nahiroimap_shortcode_show_welcome', 'nahiroimap_shortcode_setup_complete');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_map_id', '_circle_coordinates', '_map_width_cont', '_map_size_relation', '_map_color', '_map_color_mouse_over', '_stroke_color', '_stroke_width', '_bound_velocity', '_pines_text_color', '_pines_display_shape', '_pines_shape_color', '_pin_width', '_pic_hide', '_map_width_cont_unit', '_pic_position', '_map_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_map_id', '_circle_coordinates', '_map_width_cont', '_map_size_relation', '_map_color', '_map_color_mouse_over', '_stroke_color', '_stroke_width', '_bound_velocity', '_pines_text_color', '_pines_display_shape', '_pines_shape_color', '_pin_width', '_pic_hide', '_map_width_cont_unit', '_pic_position', '_map_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_map_id', '_circle_coordinates', '_map_width_cont', '_map_size_relation', '_map_color', '_map_color_mouse_over', '_stroke_color', '_stroke_width', '_bound_velocity', '_pines_text_color', '_pines_display_shape', '_pines_shape_color', '_pin_width', '_pic_hide', '_map_width_cont_unit', '_pic_position', '_map_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_map_id', '_circle_coordinates', '_map_width_cont', '_map_size_relation', '_map_color', '_map_color_mouse_over', '_stroke_color', '_stroke_width', '_bound_velocity', '_pines_text_color', '_pines_display_shape', '_pines_shape_color', '_pin_width', '_pic_hide', '_map_width_cont_unit', '_pic_position', '_map_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sacursor_activate', 'sacursor_main_color', 'sacursor_image_activate', 'sacursor_second_image', 'sacursor_second_opacity_image', 'sacursor_second_color', 'sacursor_main_width', 'sacursor_main_height', 'sacursor_main_radius', 'sacursor_main_width_hover', 'sacursor_main_height_hover', 'sacursor_second_width', 'sacursor_second_height', 'sacursor_second_radius', 'sacursor_main_opacity', 'sacursor_href_selectors', 'sacursor_second_activate');


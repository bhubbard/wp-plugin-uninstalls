-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcbdw_max_width_value', 'pcbdw_max_width_unit', 'pcbdw_background_color', 'pcbdw_border_width', 'pcbdw_border_color', 'pcbdw_border_radius_value', 'pcbdw_border_radius_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_value';
DELETE FROM wp_options WHERE option_name LIKE '%_unit';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_bottom_description_display_position', 'details', 'woo_bottom_description_display_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_bottom_description_display_position', 'details', 'woo_bottom_description_display_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_bottom_description_display_position', 'details', 'woo_bottom_description_display_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_bottom_description_display_position', 'details', 'woo_bottom_description_display_option');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_loop_image', 'ns_single_product_image', 'ns_option_single_image_height', 'ns_option_single_image_width', 'ns_option_image_height', 'ns_option_image_width', 'ns_option_single_image_heigth');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ns_option_badge', '_ns_option_badge_text', '_ns_option_badge_shape', '_ns_option_badge_single_product_image', '_ns_option_badge_sizeText', '_ns_option_badge_size_shape', '_ns_option_badge_color', '_ns_single_width_image', '_ns_single_height_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ns_option_badge', '_ns_option_badge_text', '_ns_option_badge_shape', '_ns_option_badge_single_product_image', '_ns_option_badge_sizeText', '_ns_option_badge_size_shape', '_ns_option_badge_color', '_ns_single_width_image', '_ns_single_height_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ns_option_badge', '_ns_option_badge_text', '_ns_option_badge_shape', '_ns_option_badge_single_product_image', '_ns_option_badge_sizeText', '_ns_option_badge_size_shape', '_ns_option_badge_color', '_ns_single_width_image', '_ns_single_height_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ns_option_badge', '_ns_option_badge_text', '_ns_option_badge_shape', '_ns_option_badge_single_product_image', '_ns_option_badge_sizeText', '_ns_option_badge_size_shape', '_ns_option_badge_color', '_ns_single_width_image', '_ns_single_height_image');


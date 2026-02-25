-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woovr_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woovr_%';
DELETE FROM wp_options WHERE option_name LIKE 'woovr_variations_form_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woovr_active', 'woovr_name', 'woovr_image', 'woovr_image_id', '_woovr_show_price', '_woovr_show_availability', '_woovr_show_description', '_woovr_selector', '_woovr_orderby', '_woovr_order', '_woovr_variation_name', '_woovr_show_image', '_woovr_clear_label', '_woovr_clear_image', '_woovr_clear_image_id', 'wpcvi_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woovr_active', 'woovr_name', 'woovr_image', 'woovr_image_id', '_woovr_show_price', '_woovr_show_availability', '_woovr_show_description', '_woovr_selector', '_woovr_orderby', '_woovr_order', '_woovr_variation_name', '_woovr_show_image', '_woovr_clear_label', '_woovr_clear_image', '_woovr_clear_image_id', 'wpcvi_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woovr_active', 'woovr_name', 'woovr_image', 'woovr_image_id', '_woovr_show_price', '_woovr_show_availability', '_woovr_show_description', '_woovr_selector', '_woovr_orderby', '_woovr_order', '_woovr_variation_name', '_woovr_show_image', '_woovr_clear_label', '_woovr_clear_image', '_woovr_clear_image_id', 'wpcvi_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woovr_active', 'woovr_name', 'woovr_image', 'woovr_image_id', '_woovr_show_price', '_woovr_show_availability', '_woovr_show_description', '_woovr_selector', '_woovr_orderby', '_woovr_order', '_woovr_variation_name', '_woovr_show_image', '_woovr_clear_label', '_woovr_clear_image', '_woovr_clear_image_id', 'wpcvi_images');


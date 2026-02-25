-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbtwoo_position', 'fbtwoo_title', 'fbtwoo_button_text_no_product', 'fbtwoo_button_text_one_product', 'fbtwoo_button_text_two_product', 'fbtwoo_button_text_three_product', 'fbtwoo_button_color', 'fbtwoo_button_color_hover', 'fbtwoo_button_text_color', 'fbtwoo_button_text_color_hover', 'fbtwoo_save_text_color', 'fbtwoo_total_text', 'fbtwoo_uninstall_remove_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fbtwoo_apply_discount', '_fbtwoo_discount_type', '_fbtwoo_discount_value', '_fbtwoo_product_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fbtwoo_apply_discount', '_fbtwoo_discount_type', '_fbtwoo_discount_value', '_fbtwoo_product_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fbtwoo_apply_discount', '_fbtwoo_discount_type', '_fbtwoo_discount_value', '_fbtwoo_product_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fbtwoo_apply_discount', '_fbtwoo_discount_type', '_fbtwoo_discount_value', '_fbtwoo_product_ids');


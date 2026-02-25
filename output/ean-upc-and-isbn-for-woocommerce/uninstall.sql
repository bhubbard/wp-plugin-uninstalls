-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('euaifw_show_cart_page', 'ean_frontend_barcode_color', 'ean_frontend_barcode_bg_color', 'ean_frontend_barcode_width', 'ean_frontend_barcode_height', 'ean_frontend_barcode_display_label', 'ean_front_barcode_label_font_size', 'ean_front_barcode_label_margin', 'ean_front_barcode_label_font_style', 'ean_front_barcode_label_text_align', 'ean_front_barcode_label_text_position', 'ean_front_barcode_label_font_family', 'euaifw_enable_ean', 'euaifw_show_single_prod_page', 'ean_text_position_sinpro', 'ean_singlepro_label', 'euaifw_show_shop_page', 'ean_text_position_shop', 'ean_shop_label', 'show_ean_order_items_table_thankyou_page', 'maincolor', 'mainbackcolor', 'euaifw_font_size', 'euaifw_enable_barcode', 'euaifw_show_barcode_single_pro', 'ean_barcode_position_sinpro', 'euaifw_show_barcode_shop_page', 'ean_barcode_position_shop', 'euaifw_show_barcode_cart_page', 'show_ean_barcode_imag_thankyou_page', 'euaifw_search_product', 'show_ean_admin_order_item', 'ean_admin_edit_position', 'ean_variation_admin_edit_position');
DELETE FROM wp_options WHERE option_name LIKE '%euaifwerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_global_unique_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_global_unique_id');


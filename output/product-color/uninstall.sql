-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_select_product_name_color', 'wpc_select_product_description_color', 'wpc_select_product_short_description_color', 'wpc_select_product_category_color', 'wpc_select_product_category_bg_color', 'wpc_select_product_tag_color', 'wpc_select_product_tag_bg_color', 'wpc_select_product_review_color', 'wpc_select_product_price_color', 'wpc_select_product_add_to_cart_color', 'wpc_select_product_add_to_cart_bg_color', 'wpc_select_product_sale_color', 'wpc_select_product_sale_bg_color');


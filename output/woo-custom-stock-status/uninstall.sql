-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_slr_show_fastest_stock_status_category_page', 'wc_slr_grouped_product_stock_status_for_category_page', 'woocommerce_notify_no_stock_amount', 'woocommerce_stock_format', 'wc_slr_show_quantity_based_status', 'wc_slr_high_stock_threshold', 'wc_slr_medium_stock_threshold', 'wc_slr_high_stock_status_label', 'wc_slr_medium_stock_status_label', 'wc_slr_low_stock_label', 'wc_slr_show_available_backorder_variation', 'wc_slr_hide_variation_status_category_page', 'wc_slr_stock_status_before_price', 'b2bking_plugin_status_setting', 'b2bking_guest_access_restriction_setting', 'b2bking_multisite_separate_b2bb2c_setting', 'wc_slr_show_in_cart_page', 'b2bking_hide_stock_for_b2c_setting', 'wc_slr_hide_in_woocommerce_invoice', 'wc_slr_show_in_shop_page', 'wc_slr_show_in_wordpress_blocks', 'wc_slr_show_in_order_email', 'wc_slr_show_instock_backordered', 'wc_slr_show_stock_status_tag_in_email', 'wc_slr_hide_sad_face', 'wc_slr_stock_status_after_addtocart', 'wc_slr_disable_yoast_compatibility');
DELETE FROM wp_options WHERE option_name LIKE 'wc_slr_%';
DELETE FROM wp_options WHERE option_name LIKE '%_in_cart_checkout';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('grouped_product_stock_status', 'hide_stock_status', 'b2bking_b2buser');
DELETE FROM wp_usermeta WHERE meta_key IN ('grouped_product_stock_status', 'hide_stock_status', 'b2bking_b2buser');
DELETE FROM wp_termmeta WHERE meta_key IN ('grouped_product_stock_status', 'hide_stock_status', 'b2bking_b2buser');
DELETE FROM wp_commentmeta WHERE meta_key IN ('grouped_product_stock_status', 'hide_stock_status', 'b2bking_b2buser');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%';


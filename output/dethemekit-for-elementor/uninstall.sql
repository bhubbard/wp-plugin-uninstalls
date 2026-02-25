-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pa_review_notice', 'lottie_widget_notice', 'active_sitewide_plugins', 'pa_beta_save_settings', 'dethemekit_option', 'pa_maps_save_settings', 'pa_wht_lbl_save_settings', 'pa_save_settings', 'temp_count', 'woocommerce_currency_pos', 'woocommerce_enable_review_rating', 'yith_wcwl_wishlist_page_id', 'yith_wcwl_add_to_wishlist_text', 'yith_wcwl_browse_wishlist_text', 'yith_wcwl_product_added_text', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_saleflash_text', '_stock_status', '_manage_stock', 'dethemekit_total_stock_quantity', '_stock', '_elementor_page_settings', '_sale_price_dates_from', '_sale_price_dates_to', 'color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_saleflash_text', '_stock_status', '_manage_stock', 'dethemekit_total_stock_quantity', '_stock', '_elementor_page_settings', '_sale_price_dates_from', '_sale_price_dates_to', 'color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_saleflash_text', '_stock_status', '_manage_stock', 'dethemekit_total_stock_quantity', '_stock', '_elementor_page_settings', '_sale_price_dates_from', '_sale_price_dates_to', 'color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_saleflash_text', '_stock_status', '_manage_stock', 'dethemekit_total_stock_quantity', '_stock', '_elementor_page_settings', '_sale_price_dates_from', '_sale_price_dates_to', 'color');


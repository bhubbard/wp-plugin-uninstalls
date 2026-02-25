-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ryviu_user_settings', 'ryviu_frr_status', 'ryviu_settings_reviews', 'ryviu_client_settings', 'ryviu_version', 'woocommerce_shop_page_id', 'woocommerce_enable_reviews', 'featured_ryviu_data', 'woocommerce_permalinks', 'ryviu_request');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ryviu_product_reviews_info', '_r_avg', '_wc_average_rating', '_r_count', '_wc_review_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('ryviu_product_reviews_info', '_r_avg', '_wc_average_rating', '_r_count', '_wc_review_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('ryviu_product_reviews_info', '_r_avg', '_wc_average_rating', '_r_count', '_wc_review_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ryviu_product_reviews_info', '_r_avg', '_wc_average_rating', '_r_count', '_wc_review_count');


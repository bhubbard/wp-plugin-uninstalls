-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'csf_demo_mode', 'woocommerce_enable_ajax_add_to_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_to', 'total_sales', '_stock', 'lav_boost_elementor_fake_sales_count', 'lav_boost_elementor_fake_sales_last_update', 'lav_boost_fake_sales_count', 'lav_boost_fake_sales_last_update', '_price', '_search_lav_queries', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_to', 'total_sales', '_stock', 'lav_boost_elementor_fake_sales_count', 'lav_boost_elementor_fake_sales_last_update', 'lav_boost_fake_sales_count', 'lav_boost_fake_sales_last_update', '_price', '_search_lav_queries', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_to', 'total_sales', '_stock', 'lav_boost_elementor_fake_sales_count', 'lav_boost_elementor_fake_sales_last_update', 'lav_boost_fake_sales_count', 'lav_boost_fake_sales_last_update', '_price', '_search_lav_queries', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_to', 'total_sales', '_stock', 'lav_boost_elementor_fake_sales_count', 'lav_boost_elementor_fake_sales_last_update', 'lav_boost_fake_sales_count', 'lav_boost_fake_sales_last_update', '_price', '_search_lav_queries', '_regular_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';


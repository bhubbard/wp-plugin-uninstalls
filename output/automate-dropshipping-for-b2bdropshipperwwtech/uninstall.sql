-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_userid', 'api_pid', 'api_lid', 'api_key', 'api_version', 'api_url', 'klock_crete_order_mode', 'klock_payment_method', 'klock_cc_number', 'klock_cc_exp_month', 'klock_cc_exp_year', 'klock_cc_ccv', 'klock_ship_not_available', 'klock_ship_title', 'klock_ship_desc', 'klock_ship_company_name', 'klock_ship_tracking_no', 'klock_brand_name_array', 'klock_count_brand_add_total_data', 'klock_count_brand_add_current_index', 'klock_brand_add_total_data_cron_update', 'klock_brand_add_current_index_cron_update', 'klock_brand_add_total_data', 'klock_brand_add_current_index', 'klock_crete_product_status', 'klock_crete_product_mode', 'klock_crete_product_image_mode', 'add_manage_product_limit_per_page', 'add_manage_removed_product_key', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_custom_price', '_custom_retail_price', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', 'dropshipping_api_product', 'ean', '_image_path', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_custom_price', '_custom_retail_price', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', 'dropshipping_api_product', 'ean', '_image_path', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_custom_price', '_custom_retail_price', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', 'dropshipping_api_product', 'ean', '_image_path', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_custom_price', '_custom_retail_price', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', 'dropshipping_api_product', 'ean', '_image_path', '_thumbnail_id');


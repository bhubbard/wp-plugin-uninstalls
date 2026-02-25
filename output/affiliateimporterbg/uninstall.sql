-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'active_sitewide_plugins', 'aidn_remove_img_from_desc', 'aidn_remove_link_from_desc', 'aeidn_ali_per_page', 'aeidn_ali_links_to_affiliate', 'aeidn_ali_local_currency', 'aeidn_currency_conversion_factor', 'aeidn_tr_aliexpress_language', 'aidn_amazon_default_site', 'aidn_amazon_per_page', 'aidn_currency_conversion_factor', 'ebdn_ebay_custom_id', 'ebdn_ebay_geo_targeting', 'ebdn_ebay_network_id', 'ebdn_ebay_tracking_id', 'ebdn_ebay_per_page', 'ebdn_ebay_extends_cats', 'ebdn_currency_conversion_factor', 'ebdn_ebay_using_woocommerce_currency', 'envato_currency_conversion_factor', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_activate_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_default_type';
DELETE FROM wp_options WHERE option_name LIKE '%_default_status';
DELETE FROM wp_options WHERE option_name LIKE '%_price_auto_update';
DELETE FROM wp_options WHERE option_name LIKE '%_regular_price_auto_update';
DELETE FROM wp_options WHERE option_name LIKE '%_price_auto_update_period';
DELETE FROM wp_options WHERE option_name LIKE '%_currency_conversion_factor';
DELETE FROM wp_options WHERE option_name LIKE '%_not_available_product_status';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_link_from_desc';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_img_from_desc';
DELETE FROM wp_options WHERE option_name LIKE '%_update_per_schedule';
DELETE FROM wp_options WHERE option_name LIKE '%_import_product_images_limit';
DELETE FROM wp_options WHERE option_name LIKE '%_min_product_quantity';
DELETE FROM wp_options WHERE option_name LIKE '%_max_product_quantity';
DELETE FROM wp_options WHERE option_name LIKE '%_use_proxy';
DELETE FROM wp_options WHERE option_name LIKE '%_proxies_list';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_language';
DELETE FROM wp_options WHERE option_name LIKE '%_ali_local_currency';
DELETE FROM wp_options WHERE option_name LIKE '%_ali_links_to_affiliate';
DELETE FROM wp_options WHERE option_name LIKE '%_ali_per_page';
DELETE FROM wp_options WHERE option_name LIKE '%_version_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_url', 'seller_url', 'external_id', 'price_last_update', '_manage_stock', '_stock_status', '_stock', '_visibility', '_sku', '_product_url', 'import_type', 'original_product_url', 'ship_price', 'discount_perc', '_product_image_gallery', '_price', '_regular_price', '_sale_price', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_url', 'seller_url', 'external_id', 'price_last_update', '_manage_stock', '_stock_status', '_stock', '_visibility', '_sku', '_product_url', 'import_type', 'original_product_url', 'ship_price', 'discount_perc', '_product_image_gallery', '_price', '_regular_price', '_sale_price', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_url', 'seller_url', 'external_id', 'price_last_update', '_manage_stock', '_stock_status', '_stock', '_visibility', '_sku', '_product_url', 'import_type', 'original_product_url', 'ship_price', 'discount_perc', '_product_image_gallery', '_price', '_regular_price', '_sale_price', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_url', 'seller_url', 'external_id', 'price_last_update', '_manage_stock', '_stock_status', '_stock', '_visibility', '_sku', '_product_url', 'import_type', 'original_product_url', 'ship_price', 'discount_perc', '_product_image_gallery', '_price', '_regular_price', '_sale_price', '_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filters';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_import';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_import';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_import';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_import';


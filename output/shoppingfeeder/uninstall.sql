-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoppingfeeder_api_key', 'shoppingfeeder_api_secret', 'alg_wc_ean_plugin_enabled', 'alg_wc_ean_meta_key', 'woocommerce_dimension_unit', 'woocommerce_currency', 'active_sitewide_plugins', 'woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_model_number', '_model_no', 'product_mpn', '_gtin', '_upc', '_global_unique_id', 'product_ean', '_wcmp_gtin_code', 'product_brand_name', '_wpsso_product_gtin', '_wpsso_product_gtin14', '_wpsso_product_gtin13', '_wpsso_product_gtin12', '_wpsso_product_isbn', '_wpsso_product_mfr_part_no', '_sale_price_dates_to', '_sale_price_dates_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('_model_number', '_model_no', 'product_mpn', '_gtin', '_upc', '_global_unique_id', 'product_ean', '_wcmp_gtin_code', 'product_brand_name', '_wpsso_product_gtin', '_wpsso_product_gtin14', '_wpsso_product_gtin13', '_wpsso_product_gtin12', '_wpsso_product_isbn', '_wpsso_product_mfr_part_no', '_sale_price_dates_to', '_sale_price_dates_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('_model_number', '_model_no', 'product_mpn', '_gtin', '_upc', '_global_unique_id', 'product_ean', '_wcmp_gtin_code', 'product_brand_name', '_wpsso_product_gtin', '_wpsso_product_gtin14', '_wpsso_product_gtin13', '_wpsso_product_gtin12', '_wpsso_product_isbn', '_wpsso_product_mfr_part_no', '_sale_price_dates_to', '_sale_price_dates_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_model_number', '_model_no', 'product_mpn', '_gtin', '_upc', '_global_unique_id', 'product_ean', '_wcmp_gtin_code', 'product_brand_name', '_wpsso_product_gtin', '_wpsso_product_gtin14', '_wpsso_product_gtin13', '_wpsso_product_gtin12', '_wpsso_product_isbn', '_wpsso_product_mfr_part_no', '_sale_price_dates_to', '_sale_price_dates_from');


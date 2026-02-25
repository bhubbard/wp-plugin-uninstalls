-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faire_product_linking_create_products_csv', 'faire_product_linking_create_variations_csv', 'woocommerce_manage_stock', 'faire_products_linking_last_sync_date', 'faire_taxonomy_types', 'faire_version', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'faire_api_connection_test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_faire_product_linking_error', '_faire_product_unmatched_variants', '_product_version', '_wc_attachment_source', '_faire_product_sync_result', '_faire_product_linking_error_faire_id', 'woocommerce_faire_product_taxonomy_type', 'woocommerce_faire_product_unit_multiplier', 'woocommerce_faire_product_minimum_order_quantity', 'woocommerce_faire_product_per_style_minimum_order_quantity', 'woocommerce_faire_product_variation_wholesale_price', 'woocommerce_faire_product_wholesale_price', 'woocommerce_faire_product_variation_retail_price', 'woocommerce_faire_product_retail_price', 'woocommerce_faire_product_variation_tariff_code', 'woocommerce_faire_product_tariff_code', 'woocommerce_faire_product_allow_preorder', 'woocommerce_faire_product_order_by_date', 'woocommerce_faire_product_keep_active_past_order_by_date', 'woocommerce_faire_product_expected_ship_date', 'woocommerce_faire_product_expected_ship_window_date', 'woocommerce_faire_product_variation_lifecycle_state', 'woocommerce_faire_product_lifecycle_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('_faire_product_linking_error', '_faire_product_unmatched_variants', '_product_version', '_wc_attachment_source', '_faire_product_sync_result', '_faire_product_linking_error_faire_id', 'woocommerce_faire_product_taxonomy_type', 'woocommerce_faire_product_unit_multiplier', 'woocommerce_faire_product_minimum_order_quantity', 'woocommerce_faire_product_per_style_minimum_order_quantity', 'woocommerce_faire_product_variation_wholesale_price', 'woocommerce_faire_product_wholesale_price', 'woocommerce_faire_product_variation_retail_price', 'woocommerce_faire_product_retail_price', 'woocommerce_faire_product_variation_tariff_code', 'woocommerce_faire_product_tariff_code', 'woocommerce_faire_product_allow_preorder', 'woocommerce_faire_product_order_by_date', 'woocommerce_faire_product_keep_active_past_order_by_date', 'woocommerce_faire_product_expected_ship_date', 'woocommerce_faire_product_expected_ship_window_date', 'woocommerce_faire_product_variation_lifecycle_state', 'woocommerce_faire_product_lifecycle_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('_faire_product_linking_error', '_faire_product_unmatched_variants', '_product_version', '_wc_attachment_source', '_faire_product_sync_result', '_faire_product_linking_error_faire_id', 'woocommerce_faire_product_taxonomy_type', 'woocommerce_faire_product_unit_multiplier', 'woocommerce_faire_product_minimum_order_quantity', 'woocommerce_faire_product_per_style_minimum_order_quantity', 'woocommerce_faire_product_variation_wholesale_price', 'woocommerce_faire_product_wholesale_price', 'woocommerce_faire_product_variation_retail_price', 'woocommerce_faire_product_retail_price', 'woocommerce_faire_product_variation_tariff_code', 'woocommerce_faire_product_tariff_code', 'woocommerce_faire_product_allow_preorder', 'woocommerce_faire_product_order_by_date', 'woocommerce_faire_product_keep_active_past_order_by_date', 'woocommerce_faire_product_expected_ship_date', 'woocommerce_faire_product_expected_ship_window_date', 'woocommerce_faire_product_variation_lifecycle_state', 'woocommerce_faire_product_lifecycle_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_faire_product_linking_error', '_faire_product_unmatched_variants', '_product_version', '_wc_attachment_source', '_faire_product_sync_result', '_faire_product_linking_error_faire_id', 'woocommerce_faire_product_taxonomy_type', 'woocommerce_faire_product_unit_multiplier', 'woocommerce_faire_product_minimum_order_quantity', 'woocommerce_faire_product_per_style_minimum_order_quantity', 'woocommerce_faire_product_variation_wholesale_price', 'woocommerce_faire_product_wholesale_price', 'woocommerce_faire_product_variation_retail_price', 'woocommerce_faire_product_retail_price', 'woocommerce_faire_product_variation_tariff_code', 'woocommerce_faire_product_tariff_code', 'woocommerce_faire_product_allow_preorder', 'woocommerce_faire_product_order_by_date', 'woocommerce_faire_product_keep_active_past_order_by_date', 'woocommerce_faire_product_expected_ship_date', 'woocommerce_faire_product_expected_ship_window_date', 'woocommerce_faire_product_variation_lifecycle_state', 'woocommerce_faire_product_lifecycle_state');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_product_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_product_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_product_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_product_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variant_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variant_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variant_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variant_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%variation_wholesale_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%variation_wholesale_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%variation_wholesale_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variation_wholesale_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%variation_retail_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%variation_retail_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%variation_retail_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variation_retail_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%variation_tariff_code';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%variation_tariff_code';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%variation_tariff_code';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variation_tariff_code';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%variation_lifecycle_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%variation_lifecycle_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%variation_lifecycle_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variation_lifecycle_state';


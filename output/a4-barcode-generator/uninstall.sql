-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'active-print-barcodes-version', 'alg_wc_ean_title', 'wpm_pgw_label', 'hwp_gtin_text', 'woocommerce_currency_pos', 'woocommerce_currency', 'wpbcu_old_post', 'wpbcu_validation_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%3.4.12';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('a4b_bulk_list_raw', 'dokan_enable_selling', 'first_name', 'last_name', 'date_expires', '_manage_stock', '_stock', '_stock_status', '_customer_user', '_supplier', '_code', '_length', '_width', '_height', '_regular_price', '_sale_price', '_product_attributes', '_variation_description', 'wpseo_variation_global_identifiers_values', 'wpseo_global_identifier_values', '_booking_start', 'dokan_store_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('a4b_bulk_list_raw', 'dokan_enable_selling', 'first_name', 'last_name', 'date_expires', '_manage_stock', '_stock', '_stock_status', '_customer_user', '_supplier', '_code', '_length', '_width', '_height', '_regular_price', '_sale_price', '_product_attributes', '_variation_description', 'wpseo_variation_global_identifiers_values', 'wpseo_global_identifier_values', '_booking_start', 'dokan_store_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('a4b_bulk_list_raw', 'dokan_enable_selling', 'first_name', 'last_name', 'date_expires', '_manage_stock', '_stock', '_stock_status', '_customer_user', '_supplier', '_code', '_length', '_width', '_height', '_regular_price', '_sale_price', '_product_attributes', '_variation_description', 'wpseo_variation_global_identifiers_values', 'wpseo_global_identifier_values', '_booking_start', 'dokan_store_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('a4b_bulk_list_raw', 'dokan_enable_selling', 'first_name', 'last_name', 'date_expires', '_manage_stock', '_stock', '_stock_status', '_customer_user', '_supplier', '_code', '_length', '_width', '_height', '_regular_price', '_sale_price', '_product_attributes', '_variation_description', 'wpseo_variation_global_identifiers_values', 'wpseo_global_identifier_values', '_booking_start', 'dokan_store_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%';


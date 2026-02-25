-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_ean_title', 'wpm_pgw_label', 'hwp_gtin_text', 'woocommerce_tax_based_on', 'woocommerce_default_country', 'woocommerce_store_state', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_calc_taxes', 'alg_woocommerce_checkout_fees_global_fee_enabled', 'alg_woocommerce_checkout_fees_global_fee_value', 'alg_woocommerce_checkout_fees_global_fee_title', 'alg_woocommerce_checkout_fees_global_fee_gateways_excl', 'woocommerce_tax_display_cart', 'uegen-settings-options', 'woocommerce_price_num_decimals', 'woocommerce_store_address', 'woocommerce_store_address_2', 'barcode-scanner-settings-options', 'usbs_reCreateTable_msg', 'usbs_index_triggers_counting', 'usbs_iic_updated_post_meta_admin', 'usbs_iic_updated_post_meta', 'usbs_iic_woocommerce_save_product_variation', 'usbs_iic_transition_post_status', 'usbs_iic_wp_insert_post', 'usbs_iic_pageIndexedData', 'usbs_iic_updatePostsTable', 'barcode-scanner-roles-permissions', 'woocommerce_myaccount_page_id', 'ukrsolution_upgrade_scanner_1.11.0');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE 'ukrsolution_upgrade_scanner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', 'barcode_scanner_app_otp', 'barcode_scanner_app_otp_expired_dt', 'barcode_scanner_app_auth_method', '_stock', 'scanner_active_shipping_method', 'scanner_active_payment_method', 'scanner_custom_order_total', 'scanner_custom_order_shipping', 'scanner_custom_order_shipping_tax', 'scanner_custom_order_custom_taxes', 'scanner_custom_order_cash_got', '_stock_status', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_email', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_manage_stock', '_wc_shipment_tracking_items', 'first_name', 'last_name', 'usbs_fulfillment_objects', 'usbs_order_fulfillment_data', 'number_field_step', '_product_image_gallery', 'usbs_orders_list_filter', 'barcode_scanner_app_last_used', 'wpbet-product-tracking-mode', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'wholesale_multi_user_pricing', 'dokan_enable_selling', '_regular_price', '_tax_class', '_product_attributes', '_order_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', 'barcode_scanner_app_otp', 'barcode_scanner_app_otp_expired_dt', 'barcode_scanner_app_auth_method', '_stock', 'scanner_active_shipping_method', 'scanner_active_payment_method', 'scanner_custom_order_total', 'scanner_custom_order_shipping', 'scanner_custom_order_shipping_tax', 'scanner_custom_order_custom_taxes', 'scanner_custom_order_cash_got', '_stock_status', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_email', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_manage_stock', '_wc_shipment_tracking_items', 'first_name', 'last_name', 'usbs_fulfillment_objects', 'usbs_order_fulfillment_data', 'number_field_step', '_product_image_gallery', 'usbs_orders_list_filter', 'barcode_scanner_app_last_used', 'wpbet-product-tracking-mode', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'wholesale_multi_user_pricing', 'dokan_enable_selling', '_regular_price', '_tax_class', '_product_attributes', '_order_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', 'barcode_scanner_app_otp', 'barcode_scanner_app_otp_expired_dt', 'barcode_scanner_app_auth_method', '_stock', 'scanner_active_shipping_method', 'scanner_active_payment_method', 'scanner_custom_order_total', 'scanner_custom_order_shipping', 'scanner_custom_order_shipping_tax', 'scanner_custom_order_custom_taxes', 'scanner_custom_order_cash_got', '_stock_status', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_email', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_manage_stock', '_wc_shipment_tracking_items', 'first_name', 'last_name', 'usbs_fulfillment_objects', 'usbs_order_fulfillment_data', 'number_field_step', '_product_image_gallery', 'usbs_orders_list_filter', 'barcode_scanner_app_last_used', 'wpbet-product-tracking-mode', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'wholesale_multi_user_pricing', 'dokan_enable_selling', '_regular_price', '_tax_class', '_product_attributes', '_order_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', 'barcode_scanner_app_otp', 'barcode_scanner_app_otp_expired_dt', 'barcode_scanner_app_auth_method', '_stock', 'scanner_active_shipping_method', 'scanner_active_payment_method', 'scanner_custom_order_total', 'scanner_custom_order_shipping', 'scanner_custom_order_shipping_tax', 'scanner_custom_order_custom_taxes', 'scanner_custom_order_cash_got', '_stock_status', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_email', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_manage_stock', '_wc_shipment_tracking_items', 'first_name', 'last_name', 'usbs_fulfillment_objects', 'usbs_order_fulfillment_data', 'number_field_step', '_product_image_gallery', 'usbs_orders_list_filter', 'barcode_scanner_app_last_used', 'wpbet-product-tracking-mode', 'discount_type', 'coupon_amount', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'expiry_date', 'apply_before_tax', 'free_shipping', 'wholesale_multi_user_pricing', 'dokan_enable_selling', '_regular_price', '_tax_class', '_product_attributes', '_order_number');
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index', 'ywot_tracking_code', '_aftership_tracking_items', 'barcode_scanner_web_otp', '_yith_pos_multistock', 'usbs_stock_location_level_1', 'usbs_stock_location_level_2', 'usbs_stock_location_level_3', 'search_results_sort_by', 'hwp_product_gtin', 'hwp_var_gtin', '_billing_first_name', '_billing_last_name', '_sku', '_variation_description', '_customer_user', '_alg_ean', '_wpm_gtin_code', '_ywbc_barcode_display_value', '_wepos_barcode', '_ts_gtin', '_ts_mpn', '_zettle_barcode', 'usbs_barcode_field', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index', 'ywot_tracking_code', '_aftership_tracking_items', 'barcode_scanner_web_otp', '_yith_pos_multistock', 'usbs_stock_location_level_1', 'usbs_stock_location_level_2', 'usbs_stock_location_level_3', 'search_results_sort_by', 'hwp_product_gtin', 'hwp_var_gtin', '_billing_first_name', '_billing_last_name', '_sku', '_variation_description', '_customer_user', '_alg_ean', '_wpm_gtin_code', '_ywbc_barcode_display_value', '_wepos_barcode', '_ts_gtin', '_ts_mpn', '_zettle_barcode', 'usbs_barcode_field', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index', 'ywot_tracking_code', '_aftership_tracking_items', 'barcode_scanner_web_otp', '_yith_pos_multistock', 'usbs_stock_location_level_1', 'usbs_stock_location_level_2', 'usbs_stock_location_level_3', 'search_results_sort_by', 'hwp_product_gtin', 'hwp_var_gtin', '_billing_first_name', '_billing_last_name', '_sku', '_variation_description', '_customer_user', '_alg_ean', '_wpm_gtin_code', '_ywbc_barcode_display_value', '_wepos_barcode', '_ts_gtin', '_ts_mpn', '_zettle_barcode', 'usbs_barcode_field', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_address_index', '_shipping_address_index', 'ywot_tracking_code', '_aftership_tracking_items', 'barcode_scanner_web_otp', '_yith_pos_multistock', 'usbs_stock_location_level_1', 'usbs_stock_location_level_2', 'usbs_stock_location_level_3', 'search_results_sort_by', 'hwp_product_gtin', 'hwp_var_gtin', '_billing_first_name', '_billing_last_name', '_sku', '_variation_description', '_customer_user', '_alg_ean', '_wpm_gtin_code', '_ywbc_barcode_display_value', '_wepos_barcode', '_ts_gtin', '_ts_mpn', '_zettle_barcode', 'usbs_barcode_field', '_billing_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_company';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_postcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-filled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-filled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-filled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-filled';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conv_active_domain', 'ee_options', 'ee_prod_mapped_cats', 'ee_prod_mapped_attrs', 'ee_auto_update_id', 'ee_api_data', 'ee_additional_data', 'conv_selected_events', 'woocommerce_currency', 'woocommerce_default_country', 'ee_msg_nofifications', 'conv_localhost_error', 'ee_remarketing_snippets', 'ee_customer_gmail', 'ee_customer_msmail', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'ee_customer_fbmail', 'ee_customer_gtm_gmail', 'ee_conv_plugin_version', 'conv_ut_cleanup', 'ee_ut', 'ee_convnotice', 'microsoft_ads_conversions_tracking', 'ee_prod_response', 'woocommerce_weight_unit', 'ee_conv_total_synced_product_count', 'ads_tracking_id', 'conv_gads_currency', 'google_ads_conversion_tracking', 'ee_conversio_send_to', 'woocommerce_tax_display_shop', '_conversios_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status', '_stock', '_regular_price', '_sale_price', '_sku', '_product_type', '_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status', '_stock', '_regular_price', '_sale_price', '_sku', '_product_type', '_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status', '_stock', '_regular_price', '_sale_price', '_sku', '_product_type', '_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status', '_stock', '_regular_price', '_sale_price', '_sku', '_product_type', '_tracked');


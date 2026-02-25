-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aramex_post_login_redirect_url', 'arxec_enable_plugin_rate_calculator', 'arxec_enable_rate_calculator_on_checkout', 'arxec_enable_rate_calculator_on_product_detail', 'arxec_enable_rate_calculator_on_cart', 'aramex_unified_jwt_token', 'aramex_unified_identifier', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_store_phone', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aramex_last_update_api', '_aramex_unified_synced', '_aramex_awb', '_stock', '_stock_status', '_sku', '_aramex_shipment_created', '_aramex_shipment_cancelled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aramex_last_update_api', '_aramex_unified_synced', '_aramex_awb', '_stock', '_stock_status', '_sku', '_aramex_shipment_created', '_aramex_shipment_cancelled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aramex_last_update_api', '_aramex_unified_synced', '_aramex_awb', '_stock', '_stock_status', '_sku', '_aramex_shipment_created', '_aramex_shipment_cancelled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aramex_last_update_api', '_aramex_unified_synced', '_aramex_awb', '_stock', '_stock_status', '_sku', '_aramex_shipment_created', '_aramex_shipment_cancelled');


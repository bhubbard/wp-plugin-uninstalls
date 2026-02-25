-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_tiktok_woo_connection_data', 'woocommerce_default_country', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'ced_woo_cedcommerce_connection_data', 'ced-connector-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_carriers';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ced_connector_ean', 'ced_connector_brand', '_ced_marketplace', 'shipping_label', '_trackingCompany', '_trackingNumber', 'tracking_errors', 'first_name', 'nickname', 'last_name', 'billing_phone', 'shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('ced_connector_ean', 'ced_connector_brand', '_ced_marketplace', 'shipping_label', '_trackingCompany', '_trackingNumber', 'tracking_errors', 'first_name', 'nickname', 'last_name', 'billing_phone', 'shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('ced_connector_ean', 'ced_connector_brand', '_ced_marketplace', 'shipping_label', '_trackingCompany', '_trackingNumber', 'tracking_errors', 'first_name', 'nickname', 'last_name', 'billing_phone', 'shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ced_connector_ean', 'ced_connector_brand', '_ced_marketplace', 'shipping_label', '_trackingCompany', '_trackingNumber', 'tracking_errors', 'first_name', 'nickname', 'last_name', 'billing_phone', 'shipping_phone');


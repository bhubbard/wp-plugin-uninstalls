-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp_enviroment', 'woocommerce_weight_unit', 'mpq_pickup', 'mpq_value_select', 'mp_id', 'mp_email', 'mp_api_key', 'free_shipping', 'woocommerce_shipping_mipaquete_wc_settings', 'woocommerce_store_address_2', 'woocommerce_store_city');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_declared_value', '_shipping_custom_price_product_smp', 'sending_mipaquete_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_declared_value', '_shipping_custom_price_product_smp', 'sending_mipaquete_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_declared_value', '_shipping_custom_price_product_smp', 'sending_mipaquete_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_declared_value', '_shipping_custom_price_product_smp', 'sending_mipaquete_status');


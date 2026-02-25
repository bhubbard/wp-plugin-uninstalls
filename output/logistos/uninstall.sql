-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logistos_endpoint_credentials', 'logistos_endpoint_orders', 'logistos_do_activation_jobs', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_phone');


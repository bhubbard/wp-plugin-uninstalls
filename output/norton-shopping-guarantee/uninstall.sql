-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsgpp_plugin_activation_register', 'nsgpp_sn', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_store_address', 'woocommerce_store_address_2', 'nsgpp_h', 'nsgpp_fee_price', 'nsgpp_merchant_percentage', 'nsgpp_merchant_percent');


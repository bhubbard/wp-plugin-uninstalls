-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_jccgateway_settings', 'woocommerce_calc_taxes', 'woocommerce_jccgateway_title', 'woocommerce_jccgateway_description');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'orderId', '_fes_truCode', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'orderId', '_fes_truCode', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'orderId', '_fes_truCode', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'orderId', '_fes_truCode', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');


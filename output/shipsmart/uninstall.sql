-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_shipping_method_settings', 'ss_shipping_contracts', 'ss_apikey_shipsmart', 'ss_api_verification', 'ss_show_api_verification', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'ssfw_admin_activation', 'ssfw_admin_desactivation');
DELETE FROM wp_options WHERE option_name LIKE '%apikey_shipsmart';
DELETE FROM wp_options WHERE option_name LIKE '%_measure';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_freight_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_taxable_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_insurance_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_freight_cost_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_taxable_cost_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_insurance_cost_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_quotation_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_cart_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ss_hs_code_product', 'ss_cost_base_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('ss_hs_code_product', 'ss_cost_base_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('ss_hs_code_product', 'ss_cost_base_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ss_hs_code_product', 'ss_cost_base_product');


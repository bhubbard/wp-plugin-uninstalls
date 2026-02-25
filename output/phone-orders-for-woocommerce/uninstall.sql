-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'phone-orders-for-woocommerce-rated', 'woocommerce_currency', 'woocommerce_tax_round_at_subtotal', 'active_sitewide_plugins', 'wpo_report');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_company', 'shipping_phone', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', 'first_name', 'last_name', 'locale', 'is_vat_exempt');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_company', 'shipping_phone', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', 'first_name', 'last_name', 'locale', 'is_vat_exempt');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_company', 'shipping_phone', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', 'first_name', 'last_name', 'locale', 'is_vat_exempt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_company', 'shipping_phone', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', 'first_name', 'last_name', 'locale', 'is_vat_exempt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';


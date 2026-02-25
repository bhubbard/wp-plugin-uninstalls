-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_fraktjakt_shipping_method_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_virtual', 'customs_description', 'hscode', 'taric', 'country', 'Country', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_postcode', 'shipping_city', 'shipping_country', 'billing_email', 'billing_phone', 'shipping_phone', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_virtual', 'customs_description', 'hscode', 'taric', 'country', 'Country', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_postcode', 'shipping_city', 'shipping_country', 'billing_email', 'billing_phone', 'shipping_phone', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_virtual', 'customs_description', 'hscode', 'taric', 'country', 'Country', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_postcode', 'shipping_city', 'shipping_country', 'billing_email', 'billing_phone', 'shipping_phone', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_virtual', 'customs_description', 'hscode', 'taric', 'country', 'Country', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_postcode', 'shipping_city', 'shipping_country', 'billing_email', 'billing_phone', 'shipping_phone', 'shipping_first_name', 'shipping_last_name');


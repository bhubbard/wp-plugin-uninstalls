-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activities_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_company', 'billing_country', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_postcode', 'billing_state', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_company', 'shipping_country', 'shipping_first_name', 'shipping_last_name', 'shipping_method', 'shipping_postcode', 'shipping_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_company', 'billing_country', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_postcode', 'billing_state', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_company', 'shipping_country', 'shipping_first_name', 'shipping_last_name', 'shipping_method', 'shipping_postcode', 'shipping_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_company', 'billing_country', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_postcode', 'billing_state', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_company', 'shipping_country', 'shipping_first_name', 'shipping_last_name', 'shipping_method', 'shipping_postcode', 'shipping_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_company', 'billing_country', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_phone', 'billing_postcode', 'billing_state', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_company', 'shipping_country', 'shipping_first_name', 'shipping_last_name', 'shipping_method', 'shipping_postcode', 'shipping_state');


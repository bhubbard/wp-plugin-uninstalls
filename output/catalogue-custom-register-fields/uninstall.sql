-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'Address', 'billing_address_1', 'City', 'billing_city', 'postcode', 'billing_postcode', 'phone_number', 'billing_phone', 'billing country', 'billing_country', 'billing state', 'billing_state', 'billing company', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'Address', 'billing_address_1', 'City', 'billing_city', 'postcode', 'billing_postcode', 'phone_number', 'billing_phone', 'billing country', 'billing_country', 'billing state', 'billing_state', 'billing company', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'Address', 'billing_address_1', 'City', 'billing_city', 'postcode', 'billing_postcode', 'phone_number', 'billing_phone', 'billing country', 'billing_country', 'billing state', 'billing_state', 'billing company', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'Address', 'billing_address_1', 'City', 'billing_city', 'postcode', 'billing_postcode', 'phone_number', 'billing_phone', 'billing country', 'billing_country', 'billing state', 'billing_state', 'billing company', 'billing_company');


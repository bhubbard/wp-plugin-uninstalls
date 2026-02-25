-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'billing_country', 'billing_address_1', 'billing_postcode', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_2', 'billing_state', 'billing_phone', 'billing_email', 'shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'billing_country', 'billing_address_1', 'billing_postcode', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_2', 'billing_state', 'billing_phone', 'billing_email', 'shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'billing_country', 'billing_address_1', 'billing_postcode', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_2', 'billing_state', 'billing_phone', 'billing_email', 'shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'billing_country', 'billing_address_1', 'billing_postcode', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_2', 'billing_state', 'billing_phone', 'billing_email', 'shipping_email');


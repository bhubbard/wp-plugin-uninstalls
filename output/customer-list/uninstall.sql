-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode');


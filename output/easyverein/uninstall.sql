-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easyVereinId', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('easyVereinId', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('easyVereinId', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easyVereinId', 'billing_address_1', 'billing_city', 'billing_postcode', 'billing_country');


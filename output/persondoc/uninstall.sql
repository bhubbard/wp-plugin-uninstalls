-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('persondoc_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_postcode', 'billing_city', 'billing_country', 'billing_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_postcode', 'billing_city', 'billing_country', 'billing_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_postcode', 'billing_city', 'billing_country', 'billing_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'billing_first_name', 'last_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_postcode', 'billing_city', 'billing_country', 'billing_state');


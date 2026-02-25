-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akawoo_url', 'akawoo_company_id', 'akawoo_email', 'akawoo_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_address_1', 'billing_address_2', 'billing_city', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_address_1', 'billing_address_2', 'billing_city', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_address_1', 'billing_address_2', 'billing_city', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_address_1', 'billing_address_2', 'billing_city', 'billing_country');


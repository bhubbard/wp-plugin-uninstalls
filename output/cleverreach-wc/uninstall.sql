-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cr_mailing_id', 'billing_address_1', 'billing_address_2', 'billing_country', 'first_name', 'last_name', 'billing_company', 'billing_postcode', 'billing_city', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cr_mailing_id', 'billing_address_1', 'billing_address_2', 'billing_country', 'first_name', 'last_name', 'billing_company', 'billing_postcode', 'billing_city', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cr_mailing_id', 'billing_address_1', 'billing_address_2', 'billing_country', 'first_name', 'last_name', 'billing_company', 'billing_postcode', 'billing_city', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cr_mailing_id', 'billing_address_1', 'billing_address_2', 'billing_country', 'first_name', 'last_name', 'billing_company', 'billing_postcode', 'billing_city', 'billing_phone');


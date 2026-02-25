-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jltelcl_sheet_promo_data', 'jltelcl_sheet_promo_data_hash', 'jltelcl_activation_time');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');


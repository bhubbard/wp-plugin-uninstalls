-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ss_hs_code', '_ss_customs_desc', '_ss_country_of_origin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ss_hs_code', '_ss_customs_desc', '_ss_country_of_origin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ss_hs_code', '_ss_customs_desc', '_ss_country_of_origin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ss_hs_code', '_ss_customs_desc', '_ss_country_of_origin');


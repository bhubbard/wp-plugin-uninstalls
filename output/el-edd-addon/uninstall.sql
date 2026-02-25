-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('el_edd_data', 'active_sitewide_plugins', 'health-check-allowed-plugins');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edd_variable_prices', '_el_product_license');
DELETE FROM wp_usermeta WHERE meta_key IN ('edd_variable_prices', '_el_product_license');
DELETE FROM wp_termmeta WHERE meta_key IN ('edd_variable_prices', '_el_product_license');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edd_variable_prices', '_el_product_license');


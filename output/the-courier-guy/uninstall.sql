-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-tcg_disclaimer', 'active_sitewide_plugins', 'tcg_username', 'tcg_password', 'woocommerce_calc_taxes');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_installed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_single_parcel', 'product_prohibit_tcg', 'product_free_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_single_parcel', 'product_prohibit_tcg', 'product_free_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_single_parcel', 'product_prohibit_tcg', 'product_free_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_single_parcel', 'product_prohibit_tcg', 'product_free_shipping');


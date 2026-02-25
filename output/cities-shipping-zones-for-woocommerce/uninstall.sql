-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_csz_countries_codes', 'wc_csz_shipping_distance_fee', 'wc_csz_new_state_field', 'wc_csz_populate_state', 'woocommerce_default_country', 'wc_csz_checkout_restrict_states');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'shipping_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'shipping_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'shipping_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'shipping_city');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';


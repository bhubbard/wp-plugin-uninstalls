-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clerk_options', 'plugin_options', 'woocommerce_currency', 'clerk_api_contents');
DELETE FROM wp_options WHERE option_name LIKE 'clerk_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_price_calculator');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_price_calculator');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_price_calculator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_price_calculator');


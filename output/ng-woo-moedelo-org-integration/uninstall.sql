-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_price_num_decimals');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%bill';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%bill';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%bill';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bill';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%inn';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%inn';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%inn';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%inn';


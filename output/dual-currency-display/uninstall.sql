-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_currency', 'dual_currency_enable', 'dual_currency_bgn_eur_rate');
DELETE FROM wp_options WHERE option_name LIKE 'dual_currency_table_exists_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_original_bgn_regular_price', '_original_bgn_sale_price', '_original_eur_regular_price', '_original_eur_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_original_bgn_regular_price', '_original_bgn_sale_price', '_original_eur_regular_price', '_original_eur_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_original_bgn_regular_price', '_original_bgn_sale_price', '_original_eur_regular_price', '_original_eur_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_original_bgn_regular_price', '_original_bgn_sale_price', '_original_eur_regular_price', '_original_eur_sale_price');


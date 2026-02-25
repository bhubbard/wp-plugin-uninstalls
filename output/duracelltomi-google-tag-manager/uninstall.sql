-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_shop');
DELETE FROM wp_options WHERE option_name LIKE 'gtm4wp-weatherdata-%';
DELETE FROM wp_options WHERE option_name LIKE 'gtm4wp-geodata-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_primary_%';


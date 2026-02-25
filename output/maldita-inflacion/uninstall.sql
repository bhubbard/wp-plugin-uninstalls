-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('malinf_apival', 'malinf_bkops');
DELETE FROM wp_options WHERE option_name LIKE '%-cambio';
DELETE FROM wp_options WHERE option_name LIKE '%_bkops';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', 'malinf_meta', '_price', '_sale_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', 'malinf_meta', '_price', '_sale_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', 'malinf_meta', '_price', '_sale_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', 'malinf_meta', '_price', '_sale_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_decimal_sep');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_regular_price', '_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_regular_price', '_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_regular_price', '_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_regular_price', '_price', '_sale_price');


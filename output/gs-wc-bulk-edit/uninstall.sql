-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dt_colums_settings', 'bs_filter_query', 'default_product_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price');


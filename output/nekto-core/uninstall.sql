-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nc_do_activation', 'nc_options', 'nc_version');
DELETE FROM wp_options WHERE option_name LIKE 'visualbuilder_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nc_single_product', 'rating', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('nc_single_product', 'rating', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('nc_single_product', 'rating', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nc_single_product', 'rating', '_sale_price_dates_from', '_sale_price_dates_to');


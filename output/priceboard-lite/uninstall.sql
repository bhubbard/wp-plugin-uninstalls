-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sale_price_dates_from', '_sale_price_dates_to');


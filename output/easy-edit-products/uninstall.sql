-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idehweb_eeproductssettings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_stock_status');


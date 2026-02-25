-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eism_backupsettings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_price', '_product_image_gallery', '_regular_price', '_sale_price', '_stock', '_sold_individually', '_low_stock_amount', '_weight', '_height', '_length', '_width', '_shipping_class', '_backorders');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_price', '_product_image_gallery', '_regular_price', '_sale_price', '_stock', '_sold_individually', '_low_stock_amount', '_weight', '_height', '_length', '_width', '_shipping_class', '_backorders');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_price', '_product_image_gallery', '_regular_price', '_sale_price', '_stock', '_sold_individually', '_low_stock_amount', '_weight', '_height', '_length', '_width', '_shipping_class', '_backorders');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_price', '_product_image_gallery', '_regular_price', '_sale_price', '_stock', '_sold_individually', '_low_stock_amount', '_weight', '_height', '_length', '_width', '_shipping_class', '_backorders');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webd_bulk_notified', 'webd_bulk_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_sku', '_stock', '_stock_status', '_length', '_width', '_height', '_weight', '_manage_stock', '_visibility', '_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_sku', '_stock', '_stock_status', '_length', '_width', '_height', '_weight', '_manage_stock', '_visibility', '_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_sku', '_stock', '_stock_status', '_length', '_width', '_height', '_weight', '_manage_stock', '_visibility', '_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price', '_sku', '_stock', '_stock_status', '_length', '_width', '_height', '_weight', '_manage_stock', '_visibility', '_virtual');


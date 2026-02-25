-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stock_manager_notification');
DELETE FROM wp_options WHERE option_name LIKE '%lowStockValue';
DELETE FROM wp_options WHERE option_name LIKE '%addStockNumber';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', '_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', '_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', '_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', '_sku', '_manage_stock');


-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_sale_price', '_regular_price', '_stock_status', '_stock', '_backorders', '_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_sale_price', '_regular_price', '_stock_status', '_stock', '_backorders', '_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_sale_price', '_regular_price', '_stock_status', '_stock', '_backorders', '_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_sale_price', '_regular_price', '_stock_status', '_stock', '_backorders', '_manage_stock');


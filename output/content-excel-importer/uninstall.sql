-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentExceIimporter_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_weight', '_regular_price', '_sale_price', '_stock', '_visibility', '_price', '_stock_status', '_manage_stock', '_length', '_width', '_height', '_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_weight', '_regular_price', '_sale_price', '_stock', '_visibility', '_price', '_stock_status', '_manage_stock', '_length', '_width', '_height', '_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_weight', '_regular_price', '_sale_price', '_stock', '_visibility', '_price', '_stock_status', '_manage_stock', '_length', '_width', '_height', '_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_weight', '_regular_price', '_sale_price', '_stock', '_visibility', '_price', '_stock_status', '_manage_stock', '_length', '_width', '_height', '_virtual');


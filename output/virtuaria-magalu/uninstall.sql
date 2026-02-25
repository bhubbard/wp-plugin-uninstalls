-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtuaria_magalu_products_db_version', 'virtuaria_magalu_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_weight', '_height', '_width', '_length', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_weight', '_height', '_width', '_length', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_weight', '_height', '_width', '_length', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_weight', '_height', '_width', '_length', '_sku');


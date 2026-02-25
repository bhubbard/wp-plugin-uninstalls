-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woobemp_version', 'woobemp_installed', 'BEMP_bulk_single_edit', 'wooBEMP_per_batch_count', 'wooBEMP_column_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_manage_stock', '_stock');


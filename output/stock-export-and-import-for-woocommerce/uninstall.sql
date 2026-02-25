-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hm_wcsxi_report_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_price');


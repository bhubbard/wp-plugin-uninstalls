-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aramex_loggedin_username', 'aramex_info_arx_encryption_key', 'aramex_info_arx_encryption_iv', 'aramex_api_urls');
DELETE FROM wp_options WHERE option_name LIKE 'aramex_stock_sync_done_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_sku');


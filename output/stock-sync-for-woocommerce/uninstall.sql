-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_stock_sync_last_updated', 'wss_last_response', 'woo_stock_sync_log_retention', 'wss_last_sync', 'wss_db_version', 'woocommerce_manage_stock', 'woo_stock_sync_role', 'woo_stock_sync_process_model', 'woo_stock_sync_batch_size', 'woo_stock_sync_enabled', 'wp_flash_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_stock_sync_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_stock_sync_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_stock_sync_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_stock_sync_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wss_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wss_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wss_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wss_status_%';


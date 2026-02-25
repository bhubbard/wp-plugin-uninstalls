-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jdws_order_send_running', 'jdws_order_send_total', 'jdws_order_send_processed', 'jdws_order_sync_result', 'jdws_selected_sync_ids', 'jdws_webhook_registered', 'jdws_webhook_token', 'jdws_options', 'jdws_sync_running', 'jdws_sync_processed', 'jdws_sync_total', 'jdws_sync_failed', 'jdws_logger_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jdws_remote_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jdws_remote_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jdws_remote_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jdws_remote_product_id');


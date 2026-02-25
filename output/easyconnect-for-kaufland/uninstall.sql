-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klcnn_client_key', 'klcnn_secret_key', 'klcnn_connected_since', 'klcnn_marketplace', 'klcnn_encryption_key', 'klcnn_recent_manufacturers');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_klcnn_ean', '_klcnn_sync_status', '_klcnn_kaufland_category_id', '_klcnn_kaufland_category_name', '_klcnn_kaufland_category_title', '_klcnn_last_synced', '_klcnn_processed_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_klcnn_ean', '_klcnn_sync_status', '_klcnn_kaufland_category_id', '_klcnn_kaufland_category_name', '_klcnn_kaufland_category_title', '_klcnn_last_synced', '_klcnn_processed_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_klcnn_ean', '_klcnn_sync_status', '_klcnn_kaufland_category_id', '_klcnn_kaufland_category_name', '_klcnn_kaufland_category_title', '_klcnn_last_synced', '_klcnn_processed_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_klcnn_ean', '_klcnn_sync_status', '_klcnn_kaufland_category_id', '_klcnn_kaufland_category_name', '_klcnn_kaufland_category_title', '_klcnn_last_synced', '_klcnn_processed_image_id');


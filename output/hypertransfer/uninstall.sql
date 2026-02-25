-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hypertransfer_page_selection', 'hypertransfer_total_uploaded_files', 'hypertransfer_remove_data_on_uninstall', 'hypertransfer_file_storage_limit', 'hypertransfer_logo_color_orizzontale', 'hypertransfer_compress_file_on_server', 'hypertransfer_max_compress_file_on_server', 'hypertransfer_plugin_version', 'hypertransfer_logo_bianco_simbolo', 'hypertransfer_full_notified', 'hypertransfer_send_full_notification', 'hypertransfer_max_file_updatable');
DELETE FROM wp_options WHERE option_name LIKE 'hypertransferItem_%';


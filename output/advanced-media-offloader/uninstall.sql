-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advmo_first_activated_version', 'advmo_bulk_offload_cancelled', 'advmo_bulk_offload_last_update', 'advmo_bulk_offload_data', 'advmo_last_connection_check', 'advmo_settings', 'advmo_credentials', 'advmo_bulk_offload_media_process_status');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_batch_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', 'advmo_path', 'advmo_error_log', 'advmo_offloaded', 'advmo_tmp_file', 'advmo_offloaded_at', 'advmo_provider', 'advmo_bucket', 'advmo_retention_policy', 'advmo_object_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', 'advmo_path', 'advmo_error_log', 'advmo_offloaded', 'advmo_tmp_file', 'advmo_offloaded_at', 'advmo_provider', 'advmo_bucket', 'advmo_retention_policy', 'advmo_object_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', 'advmo_path', 'advmo_error_log', 'advmo_offloaded', 'advmo_tmp_file', 'advmo_offloaded_at', 'advmo_provider', 'advmo_bucket', 'advmo_retention_policy', 'advmo_object_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attached_file', 'advmo_path', 'advmo_error_log', 'advmo_offloaded', 'advmo_tmp_file', 'advmo_offloaded_at', 'advmo_provider', 'advmo_bucket', 'advmo_retention_policy', 'advmo_object_version');


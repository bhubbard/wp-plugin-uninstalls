-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acs_settings', 'arvan-cloud-storage-bucket-name', 'arvan-cloud-storage-settings', 'OBS_INVALID_API_KEY', 'arvan-cloud-storage-bulk-upload-percent', 'arvan-cloud-storage-bulk-upload-new', 'arvan-cloud-storage-bulk-upload-error', 'obs_bulk_upload_last_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acs_storage_file_url', 'acs_storage_file_dir', '_wp_attached_file', 'acs_acl', 'acs_presigned_url', 'acs_presigned_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('acs_storage_file_url', 'acs_storage_file_dir', '_wp_attached_file', 'acs_acl', 'acs_presigned_url', 'acs_presigned_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('acs_storage_file_url', 'acs_storage_file_dir', '_wp_attached_file', 'acs_acl', 'acs_presigned_url', 'acs_presigned_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acs_storage_file_url', 'acs_storage_file_dir', '_wp_attached_file', 'acs_acl', 'acs_presigned_url', 'acs_presigned_urls');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocm_action_start_backup', 'ocm_action_start_restore', 'ocm_presigned_urls', 'ocm_is_stopped', 'ocm_upload_auto_try_nb_db', 'ocm_upload_auto_try_nb_themes', 'ocm_upload_auto_try_nb_plugins', 'ocm_upload_auto_try_nb_uploads', 'ocm_bucket_key', 'ocm_download_auto_try_nb_db', 'ocm_download_auto_try_nb_themes', 'ocm_download_auto_try_nb_plugins', 'ocm_download_auto_try_nb_uploads', 'ocm_user_email', 'ocm_excluded_folders', 'ocm_skipped_folders', 'ocm_eexcluded_folders', 'ocm_payment_status', 'ocm_backup_compress_retry_db', 'ocm_backup_upload_retry_db', 'ocm_backup_encrypt_retry_db', 'ocm_upload_file', 'restore_steps', 'backup_steps', 'wp_force_deactivated_plugins', 'ocm_restore_download_retry_db', 'ocm_restore_download_retry_themes', 'ocm_restore_download_retry_plugins', 'ocm_restore_download_retry_uploads', 'ocm_restore_decrypt_retry_db', 'ocm_restore_decrypt_retry_themes', 'ocm_restore_decrypt_retry_plugins', 'ocm_restore_decrypt_retry_uploads', 'ocm_restore_extract_retry_db', 'ocm_restore_extract_retry_themes', 'ocm_restore_extract_retry_plugins', 'ocm_restore_extract_retry_uploads', 'ocm_restore_child_delete_retry_db', 'ocm_restore_child_delete_retry_themes', 'ocm_restore_child_delete_retry_plugins', 'ocm_restore_child_delete_retry_uploads', 'ocm_backup_compress_retry_themes', 'ocm_backup_compress_retry_plugins', 'ocm_backup_compress_retry_uploads', 'ocm_backup_encrypt_retry_themes', 'ocm_backup_encrypt_retry_plugins', 'ocm_backup_encrypt_retry_uploads', 'ocm_backup_upload_retry_themes', 'ocm_backup_upload_retry_plugins', 'ocm_backup_upload_retry_uploads');
DELETE FROM wp_options WHERE option_name IN ('ocm_user_password', 'ocm_log_download', 'ocm_log_url', 'ocm_s3_bucket', 'ocm_s3_region', 'ocm_s3_access_key', 'ocm_s3_secret_key', 'ocm_backup_id', 'ocm_backup_password', 'ocm_backup_completed_steps', 'ocm_restore_completed_steps', 'ocm_maintenance_mode', 'wp_ocm_background_backup_status', 'wp_ocm_background_restore_status', 'wp_ocm_background_backup_process_lock', 'wp_ocm_background_restore_process_lock');
DELETE FROM wp_options WHERE option_name LIKE 'ocm_restore_download_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_restore_decrypt_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_restore_extract_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_restore_child_delete_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_backup_compress_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_backup_encrypt_retry_%';
DELETE FROM wp_options WHERE option_name LIKE 'ocm_backup_upload_retry_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';


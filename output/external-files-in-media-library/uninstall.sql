-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eml_audio_mode', 'eml_audio_proxy', 'eml_audio_proxy_max_age', 'eml_images_mode', 'eml_proxy', 'eml_proxy_max_age', 'eml_video_mode', 'eml_video_proxy', 'eml_video_proxy_max_age', 'eml_disable_attachment_pages', 'eml_use_file_dates', 'eml_import_running', 'eml_import_url_count', 'eml_import_errors', 'eml_import_files', 'eml_import_title', 'eml_import_url_max', 'eml_max_execution_check', 'eml_timeout', 'eml_proxy_path', 'eml_queue_limit', 'eml_queue_interval', 'eml_sync', 'eml_sync_interval', 'eml_sync_delete_unused_files_after_sync', 'eml_sync_running', 'eml_sync_url_count', 'eml_sync_url_max', 'eml_sync_title', 'eml_sync_delete_file_on_archive_deletion', 'eml_sync_set_automatic', 'eml_disable_gprd_warning', 'eml_directory_listing_hide_preview', 'eml_allowed_mime_types', 'eml_user_assign', 'efmlVersion', 'eml_log_mode', 'eml_schedules', 'eml_file_count', 'eml_file_sizes', 'eml_delete_on_deinstallation', 'eml_switch_on_uninstallation', 'eml_allowed_roles', 'eml_check_interval', 'eml_google_drive_access_tokens', 'eml_google_drive_show_trashed', 'eml_google_drive_show_shared', 'eml_woocommerce');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'efiml-dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'pi-dismissed-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'eml_locally_saved', 'eml_proxied', 'eml_login', 'eml_password', '_wp_attachment_backup_sizes', 'type', 'interval', 'eml_synced', 'eml_synced_time', 'catfolder', 'eml_categories', '_exmage_external_url', 'fildbirdfolder', 'folderly_categories');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'eml_locally_saved', 'eml_proxied', 'eml_login', 'eml_password', '_wp_attachment_backup_sizes', 'type', 'interval', 'eml_synced', 'eml_synced_time', 'catfolder', 'eml_categories', '_exmage_external_url', 'fildbirdfolder', 'folderly_categories');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'eml_locally_saved', 'eml_proxied', 'eml_login', 'eml_password', '_wp_attachment_backup_sizes', 'type', 'interval', 'eml_synced', 'eml_synced_time', 'catfolder', 'eml_categories', '_exmage_external_url', 'fildbirdfolder', 'folderly_categories');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'eml_locally_saved', 'eml_proxied', 'eml_login', 'eml_password', '_wp_attachment_backup_sizes', 'type', 'interval', 'eml_synced', 'eml_synced_time', 'catfolder', 'eml_categories', '_exmage_external_url', 'fildbirdfolder', 'folderly_categories');


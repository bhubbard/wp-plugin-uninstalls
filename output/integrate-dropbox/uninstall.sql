-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ccpidb_version', 'ccpidb_install_time', 'ccpidb_db_version', 'ccpidb_first_installed_version', 'indbox_version', 'ccpidb_encryption_key', 'ccpidb_activated', 'indbox_encryption_key', 'indbox_settings', 'indbox-app-key', 'indbox-app-secret', 'indbox_access_tokens', 'indbox-redirect-url', 'ccpidb_settings', 'integrate_dropbox_version', 'ccpidb-redirect-url', 'ccpidb_schedule_media_info_file_keys', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'ccpidb-rating-notice-interval', 'ccpidb_generate_file_media_info_running');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_indbox_media_folder_id', '_indbox_media_account_id', '_indbox_media_file_id', '_ccpidb_media_folder_path', '_ccpidb_media_file_key', '_ccpidb_media_account_id', '_wp_attached_file', '_wp_attachment_metadata', '_ccpidb_media_migrated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_indbox_media_folder_id', '_indbox_media_account_id', '_indbox_media_file_id', '_ccpidb_media_folder_path', '_ccpidb_media_file_key', '_ccpidb_media_account_id', '_wp_attached_file', '_wp_attachment_metadata', '_ccpidb_media_migrated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_indbox_media_folder_id', '_indbox_media_account_id', '_indbox_media_file_id', '_ccpidb_media_folder_path', '_ccpidb_media_file_key', '_ccpidb_media_account_id', '_wp_attached_file', '_wp_attachment_metadata', '_ccpidb_media_migrated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_indbox_media_folder_id', '_indbox_media_account_id', '_indbox_media_file_id', '_ccpidb_media_folder_path', '_ccpidb_media_file_key', '_ccpidb_media_account_id', '_wp_attached_file', '_wp_attachment_metadata', '_ccpidb_media_migrated');


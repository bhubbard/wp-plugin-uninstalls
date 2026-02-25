-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'upcasted_migration_status_progress', 'upcasted_migration_status_results', 'upcasted_migration_status_last_execution', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'upcasted_local_to_s3_finished', 'upcasted_s3_to_local_finished', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'upcasted_migration_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_backup_sizes');


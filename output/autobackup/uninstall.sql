-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_backup_cloud_storage', 'auto_backup_last_restore', 'auto_backup_sheduled_settings', 'auto_backup_storage_type', 'auto_backup_drp_app_key', 'auto_backup_drp_app_secret', 'auto_backup_gdrive_client_id', 'auto_backup_gdrive_client_secret');


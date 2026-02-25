-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbiu_schedules', 'backupsavvy_db_version', 'backupsavvy_storage', 'backupsavvy_backup_settings', 'backupsavvy_apikey', 'backupsavvy_premium_object', 'backupsavvy_license');
DELETE FROM wp_options WHERE option_name LIKE 'backupsavvy_unique_%';
DELETE FROM wp_options WHERE option_name LIKE 'backupsavvy_unique_ftp%';


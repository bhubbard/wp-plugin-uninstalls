-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seinc_backup_folder_path', 'seinc_backup_schedule_enabled', 'seinc_backup_schedule_frequency', 'seinc_backup_schedule_time', 'seinc_backup_retention_days', 'seinc_backup_progress');


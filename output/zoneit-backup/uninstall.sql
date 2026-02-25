-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zoneit_cron_backup', 'zoneit_cloud_id', 'zoneit_restore_backup_running');


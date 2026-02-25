-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ez-backup-settings', 'ELISQLREPORTS_settings_array', 'ELISQLREPORTS_BACKUP_DB', 'update_plugins');


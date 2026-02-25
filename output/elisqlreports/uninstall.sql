-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ELISQLREPORTS_reports_array', 'ELISQLREPORTS_settings_array', 'ELISQLREPORTS_BACKUP_DB');
DELETE FROM wp_options WHERE option_name LIKE 'ELISQLREPORTS_cache_%';


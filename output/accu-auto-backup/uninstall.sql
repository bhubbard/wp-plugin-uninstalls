-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accu_auto_backup_backups', 'accu_auto_backup_exclude_table', 'accu_auto_backup_log', 'accu_auto_backup_sc_auto_enabled', 'accu_auto_backup_bkp_store_limit', 'accu_last_backup', 'accu_auto_backup_backup_method', 'accu_auto_backup_sc_auto_interval', 'accu_auto_backup_updated');
DELETE FROM wp_options WHERE option_name LIKE '%_sc_auto_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_backup_method';
DELETE FROM wp_options WHERE option_name LIKE '%_sc_auto_interval';
DELETE FROM wp_options WHERE option_name LIKE '%_bkp_store_limit';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_db_backup_excs', 'wpdb_backup_recip', 'wp_cron_backup_schedule', 'wp_cron_backup_tables', 'wp_cron_backup_recipient', 'wp_cron_daily_lastrun');


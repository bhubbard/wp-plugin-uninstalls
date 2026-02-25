-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fswa_db_version', 'fswa_log_retention_days', 'fswa_archive_logs', 'fswa_archived_stats', 'fswa_migration_notice');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acmt_auto_backup_enabled', 'acmt_backup_retention_days', 'acmt_last_db_optimization', 'acmt_space_saved', 'acmt_last_cleanup_run', 'acmt_install_date', 'acmt_reminder_date', 'acmt_review_dismissed', 'acmt_clean_master_daily', 'acmt_clean_master_weekly');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');


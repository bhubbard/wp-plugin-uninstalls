-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpgr_version', 'mpgr_weekly_summary_settings', 'mpgr_reminder_settings', 'mpgr_report_cache', 'mpgr_summary_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');


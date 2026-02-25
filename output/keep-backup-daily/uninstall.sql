-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kbfnr_settings', 'kbfnr_error_log', 'kbfnr_usage', 'kbfnr_schema_version', 'ms_files_rewriting', 'active_sitewide_plugins', 'kbd_settings', 'kbd_backup_aliases');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kbfnr_dismiss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kbfnr_dismiss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kbfnr_dismiss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kbfnr_dismiss_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kbfnr_reminder_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kbfnr_reminder_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kbfnr_reminder_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kbfnr_reminder_%';


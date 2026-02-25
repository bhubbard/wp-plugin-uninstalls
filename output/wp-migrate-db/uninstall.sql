-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmdb_addon_requirement_check', 'wpmdb_settings', 'wpmdb_error_log', 'active_sitewide_plugins', 'wpmdb_migration_state', 'wpmdb_usage', 'wpmdb_remote_response', 'wpmdb_recent_migrations', 'wpmdb_migration_options', 'wpmdb_wpe_remote_cookie', 'wpmdb_migration_id', 'wpmdb_saved_profiles', 'wpmdb_schema_version', 'ms_files_rewriting', 'wpmdb_upgrade_data', 'update_plugins', 'wpmdb_disabled_legacy_addons', 'wpmdb_queue_status', 'wpmdb_migration_id', 'wp_migrate_db_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_media_files_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_themes_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_plugins_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_muplugins_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpmdb_folder_transfers_others_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmdb_dismiss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmdb_dismiss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmdb_dismiss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmdb_dismiss_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmdb_reminder_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmdb_reminder_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmdb_reminder_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmdb_reminder_%';


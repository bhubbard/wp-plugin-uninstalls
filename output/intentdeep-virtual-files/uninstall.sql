-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intentdeep_vf_settings', 'intentdeep_vf_onboarding_status', 'intentdeep_vf_migration_completed', 'virtual-files-settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'intentdeep_vf_flush_rewrite_rules', 'intentdeep_vf_limit_banner_dismissed', 'intentdeep_vf_migration_notice', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'intentdeep_vf_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vf_filename', '_vf_status', '_vf_content', '_vf_mime_type', '_vf_modified', '_vf_access_count', '_vf_analytics_daily', '_vf_last_accessed', '_vf_analytics_hourly');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vf_filename', '_vf_status', '_vf_content', '_vf_mime_type', '_vf_modified', '_vf_access_count', '_vf_analytics_daily', '_vf_last_accessed', '_vf_analytics_hourly');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vf_filename', '_vf_status', '_vf_content', '_vf_mime_type', '_vf_modified', '_vf_access_count', '_vf_analytics_daily', '_vf_last_accessed', '_vf_analytics_hourly');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vf_filename', '_vf_status', '_vf_content', '_vf_mime_type', '_vf_modified', '_vf_access_count', '_vf_analytics_daily', '_vf_last_accessed', '_vf_analytics_hourly');


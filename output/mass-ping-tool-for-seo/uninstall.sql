-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpt_db_version', 'mass_ping_log', 'mpt-last-update', 'mpt-update-require', 'mpt-ping-services', 'mass-ping-tool-for-seo', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pingme', '_encloseme', '_trackbackme');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pingme', '_encloseme', '_trackbackme');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pingme', '_encloseme', '_trackbackme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pingme', '_encloseme', '_trackbackme');


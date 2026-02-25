-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('analog_custom_library_queue_flush_rewrite_rules', 'elementor_experiment-container', 'analog_custom_library_options', '_analog_custom_library_import_history', 'analog_custom_library_previous_db_version', 'analog_custom_library_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'agwp_custom_library_outdated_templates', 'analog_custom_library_license_message', 'analog_custom_library_info', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'analog_custom_library_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('analog_custom_library_sync_to_library', 'required_plugins', 'is_pro', 'uses_container');
DELETE FROM wp_usermeta WHERE meta_key IN ('analog_custom_library_sync_to_library', 'required_plugins', 'is_pro', 'uses_container');
DELETE FROM wp_termmeta WHERE meta_key IN ('analog_custom_library_sync_to_library', 'required_plugins', 'is_pro', 'uses_container');
DELETE FROM wp_commentmeta WHERE meta_key IN ('analog_custom_library_sync_to_library', 'required_plugins', 'is_pro', 'uses_container');


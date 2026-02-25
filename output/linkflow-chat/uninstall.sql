-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkflow_chat_settings', 'linkflow_chat_version', 'linkflow_chat_db_version', 'linkflow_chat_activation_time', 'linkflow_chat_first_run', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'linkflow_chat_activated', 'linkflow_chat_updated', 'linkflow_chat_table_stats', 'linkflow_chat_db_size', 'linkflow_chat_active_services', 'linkflow_chat_upgraded', 'linkflow_chat_upgrade_error', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');


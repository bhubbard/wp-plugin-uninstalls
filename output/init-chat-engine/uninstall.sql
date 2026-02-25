-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('init_plugin_suite_chat_engine_db_version', 'init_chat_last_daily_stat_update', 'init_chat_basic_settings', 'init_chat_security_settings', 'init_chat_advanced_settings', 'init_plugin_suite_chat_engine_settings');


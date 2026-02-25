-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('momo_rssfeed_openai_settings', 'momo_autoblog_openai_settings', 'momo_acg_eo_openai_settings', 'momo_acg_rssfeed_event_list', 'momo_acg_chatbot_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'momo_wsw_api_cache_settings', 'momo_acg_eo_searchlog_settings', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');


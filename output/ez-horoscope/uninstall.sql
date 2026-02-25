-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezhp_summaries_cache_version', 'ezhp_horoscope_activation_guid', 'ezhp_voice_agent_id', 'ezhp_voice_api_key_last4', 'ezhp_voice_api_key', 'ezhp_agent_widget_ids', 'ezhp_horoscope_background_color', 'ezhp_horoscope_font', 'ezhp_horoscope_font_size', 'ezhp_horoscope_font_color', 'ezhp_horoscope_include_backlink', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');


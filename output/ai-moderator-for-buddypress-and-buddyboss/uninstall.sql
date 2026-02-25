-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_moderator_for_buddypress_moderation_enabled', 'ai_moderator_for_buddypress_prohibited_words', 'ai_moderator_for_buddypress_openai_api_key', 'ai_moderator_for_buddypress_ai_model', 'ai_moderator_for_buddypress_notification_text', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');


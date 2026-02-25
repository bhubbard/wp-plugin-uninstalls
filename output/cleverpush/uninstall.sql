-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cleverpush_channel_config', 'cleverpush_amp_widget_position', 'cleverpush_channel_id', 'cleverpush_apikey_private', 'cleverpush_enable_domain_replacement', 'cleverpush_replacement_domain', 'cleverpush_feed_maximum_articles', 'cleverpush_feed_maximum_days', 'cleverpush_woocommerce_notification_minutes', 'cleverpush_woocommerce_notification_text', 'cleverpush_capabilities_version', 'cleverpush_post_types', 'cleverpush_preview_access_enabled', 'cleverpush_amp_enabled', 'cleverpush_flush_rewrite_rules_flag', 'cleverpush_stories_enabled', 'cleverpush_channel_hidden_notification_settings', 'cleverpush_notification_title_required', 'cleverpush_notification_result', 'cleverpush_notification_error', 'cleverpush_channel_subdomain', 'cleverpush_channel_worker_file', 'cleverpush_apikey_public', 'cleverpush_feed_enabled', 'cleverpush_script_disabled', 'cleverpush_script_blocked_consentmanager_enabled', 'cleverpush_segments_response', 'cleverpush_topics_response', 'cleverpush_tags_response');
DELETE FROM wp_options WHERE option_name LIKE 'cleverpush_amp_script_%';
DELETE FROM wp_options WHERE option_name LIKE '%_content';
DELETE FROM wp_options WHERE option_name LIKE '%_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cleverpush_story_id', 'cleverpush_notification_sent', 'cleverpush_notification_sent_at', 'cleverpush_send_notification', 'cleverpush_title', 'cleverpush_text', 'cleverpush_scheduled_at', 'cleverpush_disable_feed');
DELETE FROM wp_usermeta WHERE meta_key IN ('cleverpush_story_id', 'cleverpush_notification_sent', 'cleverpush_notification_sent_at', 'cleverpush_send_notification', 'cleverpush_title', 'cleverpush_text', 'cleverpush_scheduled_at', 'cleverpush_disable_feed');
DELETE FROM wp_termmeta WHERE meta_key IN ('cleverpush_story_id', 'cleverpush_notification_sent', 'cleverpush_notification_sent_at', 'cleverpush_send_notification', 'cleverpush_title', 'cleverpush_text', 'cleverpush_scheduled_at', 'cleverpush_disable_feed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cleverpush_story_id', 'cleverpush_notification_sent', 'cleverpush_notification_sent_at', 'cleverpush_send_notification', 'cleverpush_title', 'cleverpush_text', 'cleverpush_scheduled_at', 'cleverpush_disable_feed');


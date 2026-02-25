-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scdc_notifier_enabled', 'scdc_api_key', 'scdc_webhook_url', 'scdc_embed_color', 'scdc_show_detailed_order_info', 'scdc_discord_public_key', 'scdc_bot_token', 'scdc_channel_id', 'scdc_status_management_enabled', 'scdc_thread_enabled', 'scdc_custom_webhook_enabled', 'scdc_custom_webhook_path', 'scdc_transient_duration', 'scdc_do_redirect', 'syncpa_scdc_pro_license_status');
DELETE FROM wp_options WHERE option_name LIKE 'scdc_last_event_%';


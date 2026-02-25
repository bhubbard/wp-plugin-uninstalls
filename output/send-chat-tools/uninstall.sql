-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_site_transient_update_core', '_site_transient_update_themes', '_site_transient_update_plugins', '_site_transient_theme_roots', 'sct_cron_time', 'sct_chatwork_api_token', 'sct_chatwork_room_id', 'sct_use_slack', 'sct_slack_webhook_url', 'sct_send_slack_author', 'sct_send_slack_update', 'sct_use_chatwork', 'sct_send_chatwork_author', 'sct_send_chatwork_update', 'sct_use_discord', 'sct_discord_webhook_url', 'sct_send_discord_author', 'sct_send_discord_update');
DELETE FROM wp_options WHERE option_name LIKE 'sct_use_%';
DELETE FROM wp_options WHERE option_name LIKE '%_author';
DELETE FROM wp_options WHERE option_name LIKE '%_update';
DELETE FROM wp_options WHERE option_name LIKE '%_webhook_url';


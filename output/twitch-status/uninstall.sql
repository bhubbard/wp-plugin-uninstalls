-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitch_status_client_id', 'twitch_status_client_secret', 'twitch_status_channels', 'twitch_status_channel', 'twitch_status_selector', 'twitch_status_token', 'twitch_status_token_type', 'twitch_status_token_expiration');


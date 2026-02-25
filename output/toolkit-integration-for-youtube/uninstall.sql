-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yt_for_wp_channel_id', 'yt_for_wp_api_key', 'yt_for_wp_encrypted_api_key');


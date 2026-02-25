-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgn_db_version', 'wgn_api_token', 'wgn_bot_token', 'wgn_channel_username', 'wgn_send_to_channel', 'wgn_channel_pattern', 'wgn_send_thumb', 'wgn_hashtag', 'wgn_markdown', 'wgn_web_preview', 'wgn_img_position', 'wgn_excerpt_length');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wgn_send_to_channel', '_wgn_meta_pattern', '_wgn_send_thumb', '_wgn_img_id', '_wgn_file_id', '_wgn_meta_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wgn_send_to_channel', '_wgn_meta_pattern', '_wgn_send_thumb', '_wgn_img_id', '_wgn_file_id', '_wgn_meta_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wgn_send_to_channel', '_wgn_meta_pattern', '_wgn_send_thumb', '_wgn_img_id', '_wgn_file_id', '_wgn_meta_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wgn_send_to_channel', '_wgn_meta_pattern', '_wgn_send_thumb', '_wgn_img_id', '_wgn_file_id', '_wgn_meta_data');


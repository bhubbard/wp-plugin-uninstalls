-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avir_twitter_x_api_key', 'avir_twitter_x_api_key_secret', 'avir_twitter_x_access_token', 'avir_twitter_x_access_token_secret', 'avir_twitter_x_version', 'avir_twitter_x_char_limit', 'avir_twitter_x_read_more_text', 'avir_twitter_x_link_same_line', 'avir_twitter_x_link_prefix', 'avir_twitter_x_textarea_height', 'avir_twitter_x_excerpt_mode', 'avir_twitter_x_excerpt_length', 'avir_twitter_x_strip_headers', 'avir_twitter_x_install_date', 'avir_twitter_x_supported_post_types', 'avir_twitter_x_show_status_column', 'avir_twitter_x_settings_errors', 'avir_twitter_x_settings_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avir_x_post_status', '_avir_x_post_count', '_avir_x_post_date', '_avir_x_post_id', '_avir_x_hashtags', '_avir_x_hashtag_position', '_avir_x_custom_excerpt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avir_x_post_status', '_avir_x_post_count', '_avir_x_post_date', '_avir_x_post_id', '_avir_x_hashtags', '_avir_x_hashtag_position', '_avir_x_custom_excerpt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avir_x_post_status', '_avir_x_post_count', '_avir_x_post_date', '_avir_x_post_id', '_avir_x_hashtags', '_avir_x_hashtag_position', '_avir_x_custom_excerpt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avir_x_post_status', '_avir_x_post_count', '_avir_x_post_date', '_avir_x_post_id', '_avir_x_hashtags', '_avir_x_hashtag_position', '_avir_x_custom_excerpt');


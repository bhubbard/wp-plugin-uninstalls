-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitter_image_host_link_thumbnails', 'twitter_image_host_oauth_consumer_key', 'twitter_image_host_oauth_consumer_secret', 'twitter_image_host_author_twitter_account_map', 'twitter_image_host_access_key', 'twitter_image_host_max_width', 'twitter_image_host_max_height', 'twitter_image_host_override_url_prefix', 'twitter_image_host_widget');
DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_%';
DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_token_secret_%';


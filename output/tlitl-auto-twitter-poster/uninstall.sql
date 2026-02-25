-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_post_to_twitter_twitter_tlitlapikey', 'wp_post_to_twitter_twitter_consumer_key', 'wp_post_to_twitter_twitter_consumer_secret', 'wp_post_to_twitter_twitter_access_token', 'wp_post_to_twitter_twitter_access_token_secret', 'wp_post_to_twitter_twitter_prefix');


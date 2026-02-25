-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utf_consumer_key', 'utf_consumer_secret', 'utf_access_token', 'utf_access_token_secret', 'utf_shortcodes', 'utf_urls', 'utf_cache_option', 'utf_cache_in_minutes', 'utf_date_of_tweet', 'utf_replies_icon', 'utf_retweets_icon', 'utf_favorites_icon', 'utf_hide_videos', 'utf_hide_images', 'utf_size_images');


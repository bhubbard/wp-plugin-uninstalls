-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itap_interval_time', 'itap_post_type', 'itap_user_id', 'itap_search_string', 'itap_consumer_key', 'itap_consumer_secret', 'itap_access_token', 'itap_access_token_secret', 'itap_tweet_from', 'itap_search_result_type', 'itap_tweets_count', 'itap_assigned_category', 'itap_post_status', 'itap_post_comment_status', 'itap_import_retweets', 'itap_exclude_replies', 'itap_display_retweets_username', 'itap_wp_time_as_published_date', 'itap_post_title', 'itap_post_title_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tweet_id', '_tweet_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tweet_id', '_tweet_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tweet_id', '_tweet_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tweet_id', '_tweet_url');


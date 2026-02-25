-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_visearch_tweets_widget', 'visearch_tweets', 'visearch_tweets_cache', 'visearch_tweets_hashtag', 'visearch_tweets_username', 'visearch_tweets_select_option', 'visearch_tweets_details');


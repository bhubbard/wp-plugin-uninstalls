-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('author_widget_disable', 'olympus_twitter_consumer_key', 'olympus_twitter_consumer_secret', 'olympus_twitter_access_token', 'olympus_twitter_access_token_secret', 'olympus_twitter_plugin_last_cache_time', 'olympus_twitter_plugin_tweets');


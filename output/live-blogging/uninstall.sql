-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liveblogging_update_effect', 'liveblogging_style', 'liveblogging_date_style', 'liveblogging_twitter_token', 'liveblogging_twitter_secret', 'liveblogging_imported_tweets', 'liveblogging_twitter_request_token', 'liveblogging_twitter_request_secret', 'liveblogging_comments', 'liveblog_assigned_ids', 'liveblogging_id', 'liveblogging_method', 'liveblogging_enable_twitter', 'liveblogging_disable_twitter_comments', 'liveblogging_meteor_host', 'liveblogging_meteor_controller', 'liveblogging_meteor_controller_port', 'liveblogging_unhooks', 'liveblogging_timed_update_freq', 'liveblogging_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', 'liveblogging_hashtag', '_liveblogging_tweeted', '_liveblogging_deleted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_liveblog_active', '_liveblog', 'liveblogging_hashtag', '_liveblogging_tweeted', '_liveblogging_deleted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', 'liveblogging_hashtag', '_liveblogging_tweeted', '_liveblogging_deleted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', 'liveblogging_hashtag', '_liveblogging_tweeted', '_liveblogging_deleted');


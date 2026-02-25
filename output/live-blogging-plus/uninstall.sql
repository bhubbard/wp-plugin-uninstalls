-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liveblogging_method', 'liveblogging_update_effect', 'liveblogging_enable_twitter', 'liveblogging_disable_twitter_comments', 'liveblogging_comments', 'liveblogging_date_style', 'liveblogging_style', 'liveblogging_meteor_host', 'liveblogging_meteor_controller', 'liveblogging_meteor_controller_port', 'liveblogging_id', 'liveblogging_unhooks', 'liveblogging_timed_update_freq', 'liveblogging_date', 'liveblogging_twitter_token', 'liveblogging_twitter_request_token', 'liveblogging_twitter_request_secret', 'liveblog_assigned_ids', 'liveblogging_twitter_secret', 'liveblogging_imported_tweets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', '_liveblogging_tweeted', 'liveblogging_hashtag', '_liveblogging_deleted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_liveblog_active', '_liveblog', '_liveblogging_tweeted', 'liveblogging_hashtag', '_liveblogging_deleted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', '_liveblogging_tweeted', 'liveblogging_hashtag', '_liveblogging_deleted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_liveblog_active', '_liveblog', '_liveblogging_tweeted', 'liveblogging_hashtag', '_liveblogging_deleted');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_api_app_id', 'tm_api_app_key', 'tm_source', 'tm_version', 'tm_url_shortner', 'tm_api_key', 'tm_space', 'tm_hashtags', 'tm_hashtags_tags', 'tm_style', 'tm_where', 'tm_display_page', 'tm_display_front', 'tm_display_rss', 'tm_ping', 'tm_rss_where');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tm_hashtags', 'tweetmeme');
DELETE FROM wp_usermeta WHERE meta_key IN ('tm_hashtags', 'tweetmeme');
DELETE FROM wp_termmeta WHERE meta_key IN ('tm_hashtags', 'tweetmeme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tm_hashtags', 'tweetmeme');


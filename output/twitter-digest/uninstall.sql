-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws_td_username', 'ws_td_password', 'ws_td_last_check', 'ws_td_pub_day', 'ws_td_freq', 'ws_td_last_tweet', 'ws_td_num_tweets', 'ws_td_includeRTs', 'ws_td_drop_replies', 'ws_td_min_tweets', 'ws_td_chrono', 'ws_td_title', 'ws_td_excerpt', 'ws_td_pub_time', 'ws_td_status', 'ws_td_category', 'ws_td_author', 'ws_td_post_tags', 'ws_td_showtime', 'ws_td_showdate', 'ws_td_conskey', 'ws_td_conssecret', 'ws_td_acctoken', 'ws_td_accsecret', 'ws_td_error', 'ws_td_dateFormat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ws_tweeted');
DELETE FROM wp_usermeta WHERE meta_key IN ('ws_tweeted');
DELETE FROM wp_termmeta WHERE meta_key IN ('ws_tweeted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ws_tweeted');


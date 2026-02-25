-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtt_twitter_username');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jd_wp_tweet_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jd_wp_tweet_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jd_wp_tweet_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jd_wp_tweet_id');


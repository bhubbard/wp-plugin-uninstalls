-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stf_auth_creds', 'stf_twit', 'stf_last_tweet', 'stf_creds_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('raw_tweet', 'tweet_id', 'is_retweet', 'is_reply');
DELETE FROM wp_usermeta WHERE meta_key IN ('raw_tweet', 'tweet_id', 'is_retweet', 'is_reply');
DELETE FROM wp_termmeta WHERE meta_key IN ('raw_tweet', 'tweet_id', 'is_retweet', 'is_reply');
DELETE FROM wp_commentmeta WHERE meta_key IN ('raw_tweet', 'tweet_id', 'is_retweet', 'is_reply');


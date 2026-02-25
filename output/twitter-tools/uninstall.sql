-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aktt_v3_settings', 'aktt_v3_accounts', 'aktt_twitter_username');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aktt_tweet_raw_data', '_aktt_tweet_id', '_thumbnail_id', '_aktt_30_backfill_needed', '_aktt_tweet_post_id', '_aktt_tweet_blog_post_id', '_aktt_upgraded_30');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aktt_tweet_raw_data', '_aktt_tweet_id', '_thumbnail_id', '_aktt_30_backfill_needed', '_aktt_tweet_post_id', '_aktt_tweet_blog_post_id', '_aktt_upgraded_30');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aktt_tweet_raw_data', '_aktt_tweet_id', '_thumbnail_id', '_aktt_30_backfill_needed', '_aktt_tweet_post_id', '_aktt_tweet_blog_post_id', '_aktt_upgraded_30');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aktt_tweet_raw_data', '_aktt_tweet_id', '_thumbnail_id', '_aktt_30_backfill_needed', '_aktt_tweet_post_id', '_aktt_tweet_blog_post_id', '_aktt_upgraded_30');


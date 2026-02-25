-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharing_plus_review_dismiss', 'sharing_plus_active_time', 'run_sharing_plus_update_routine_2', 'sharing_plus_networks', 'sharing_plus_icons_order', 'sharing_plus_settings', 'sharing_plus_inline', 'sharing_plus_positions', 'sharing_plus_themes', 'sharing_plus_extra', 'sharing_plus_not_exist_post_old_counts', 'sharing_plus_not_exist_post_total_counts', 'sharing_plus_follow_twitter_token', 'sharing_plus_sidebar', 'sharing_plus_advanced', 'sharing_plus_follow_facebook_counter', 'sharing_plus_follow_twitter_counter', 'sharing_plus_follow_google_counter', 'sharing_plus_follow_youtube_counter', 'sharing_plus_follow_pinterest_counter', 'sharing_plus_follow_instagram_counter');
DELETE FROM wp_options WHERE option_name LIKE '%_counts';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sharing_plus_cache_timestamp', 'sharing_plus_old_counts', 'sharing_plus_total_counts', 'sharing_plus_fbshare_counts');
DELETE FROM wp_usermeta WHERE meta_key IN ('sharing_plus_cache_timestamp', 'sharing_plus_old_counts', 'sharing_plus_total_counts', 'sharing_plus_fbshare_counts');
DELETE FROM wp_termmeta WHERE meta_key IN ('sharing_plus_cache_timestamp', 'sharing_plus_old_counts', 'sharing_plus_total_counts', 'sharing_plus_fbshare_counts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sharing_plus_cache_timestamp', 'sharing_plus_old_counts', 'sharing_plus_total_counts', 'sharing_plus_fbshare_counts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counts';


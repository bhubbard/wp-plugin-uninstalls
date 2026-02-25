-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialWarfareOptions', 'social_warfare_settings', 'twitter-handle', 'swp_json_cache', 'swp_registered_options', 'swp_authorizations', 'social_warfare_dismissed_notices', 'social_warfare_persistent_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_total_shares', 'swp_twitter', 'swp_fb_author', 'swp_post_location', 'swp_float_location', '_stumbleupon_shares', '_mix_shares', 'swp_pinterest_image', 'swp_pinterest_description', 'swp_custom_tweet', 'swp_recovery_url', 'swp_cache_timestamp', '_totes', '_email_shares', '_more_shares', '_print_shares', '_telegram_shares');
DELETE FROM wp_usermeta WHERE meta_key IN ('_total_shares', 'swp_twitter', 'swp_fb_author', 'swp_post_location', 'swp_float_location', '_stumbleupon_shares', '_mix_shares', 'swp_pinterest_image', 'swp_pinterest_description', 'swp_custom_tweet', 'swp_recovery_url', 'swp_cache_timestamp', '_totes', '_email_shares', '_more_shares', '_print_shares', '_telegram_shares');
DELETE FROM wp_termmeta WHERE meta_key IN ('_total_shares', 'swp_twitter', 'swp_fb_author', 'swp_post_location', 'swp_float_location', '_stumbleupon_shares', '_mix_shares', 'swp_pinterest_image', 'swp_pinterest_description', 'swp_custom_tweet', 'swp_recovery_url', 'swp_cache_timestamp', '_totes', '_email_shares', '_more_shares', '_print_shares', '_telegram_shares');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_total_shares', 'swp_twitter', 'swp_fb_author', 'swp_post_location', 'swp_float_location', '_stumbleupon_shares', '_mix_shares', 'swp_pinterest_image', 'swp_pinterest_description', 'swp_custom_tweet', 'swp_recovery_url', 'swp_cache_timestamp', '_totes', '_email_shares', '_more_shares', '_print_shares', '_telegram_shares');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shares';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shares';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shares';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shares';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_link';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


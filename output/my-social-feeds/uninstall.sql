-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ifbData', 'bpifb_Data', 'fs_lite_accounts', 'msfbp_instagram_access_tokens', 'msfbp_pinterest_feeds_credentials', 'ttp_tiktok_accounts_migrated', 'ttp_tiktok_accounts', 'msfbp_twitter_credentials', 'ttp_tiktok_videos', 'ttp_tiktok_user_info', 'ifbInstagramData', 'ttp_tiktok_authorized_data', 'ttp_tiktok_access_token');


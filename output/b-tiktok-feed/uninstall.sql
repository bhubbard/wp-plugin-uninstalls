-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_lite_accounts', 'tiktok_api_version', 'ttp_tiktok_videos', 'ttp_tiktok_user_info', 'ttp_tiktok_access_token', 'ttp_tiktok_authorized_data');
DELETE FROM wp_options WHERE option_name LIKE '%_ttp_tiktok_videos';


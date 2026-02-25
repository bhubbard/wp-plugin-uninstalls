-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctf_options', 'ctf_configure', 'ctf_version', 'ctf_customize', 'ctf_style', 'ctf_db_version', 'ctf_statuses', 'ctf_rating_notice', 'ctf_legacy_feed_settings', 'ctf_usage_tracking', 'ctf_license_key', 'ctf_license_data', 'ctf_check_license_api_when_expires', 'ctf_license_status', 'ctf_license_last_check_timestamp', 'ctf_review_consent', 'ctf_notifications', 'ctf_api_call_log', 'ctf_cron_report', 'ctf_errors', 'ctf_one_click_upgrade', 'ctf_ver', 'ctf_usage_tracking_config', 'ctf_local_avatars', 'ctf_cache_list', 'ctf_twitter_cards', 'ctf_theme_styles', 'ctf_welcome_seen', 'ctf_newuser_notifications', 'custom_twitter_feeds_rating_notice_waiting', 'instagram_feed_dismiss_lite', 'twitter_feed_dismiss_lite', 'sb_twitter_oauth_bearer_access_token_cache');
DELETE FROM wp_options WHERE option_name LIKE 'ctf_license_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ctf_ignore_dashboard_license_notice', 'ctf_ignore_new_user_sale_notice', 'ctf_ignore_bfcm_sale_notice', 'ctf_onboarding');
DELETE FROM wp_usermeta WHERE meta_key IN ('ctf_ignore_dashboard_license_notice', 'ctf_ignore_new_user_sale_notice', 'ctf_ignore_bfcm_sale_notice', 'ctf_onboarding');
DELETE FROM wp_termmeta WHERE meta_key IN ('ctf_ignore_dashboard_license_notice', 'ctf_ignore_new_user_sale_notice', 'ctf_ignore_bfcm_sale_notice', 'ctf_onboarding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ctf_ignore_dashboard_license_notice', 'ctf_ignore_new_user_sale_notice', 'ctf_ignore_bfcm_sale_notice', 'ctf_onboarding');


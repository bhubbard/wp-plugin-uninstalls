-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbi_license_key', 'sbi_license_data', 'sbi_statuses', 'sbi_custom_templates_notice_dismissed', 'sb_callout', 'sbi_license_status', 'sb_instagram_settings', 'sbi_usage_tracking', 'sbi_cron_report', 'sbi_top_api_calls', 'sbi_rating_notice', 'sbi_license_last_check_timestamp', 'sbi_oembed_token', 'sbi_one_click_upgrade', 'cff_oembed_token', 'sbi_hashtag_ids_with_connected_accounts', 'sbi_db_version', 'sbi_legacy_feed_settings', 'sbi_ver', 'sb_expired_tokens', 'sb_instagram_errors', 'sb_instagram_ajax_status', 'sbi_hashtag_ids', 'sbi_usage_tracking_config', 'sbi_refresh_report', 'sbi_welcome_seen', 'sbi_notifications', 'sbi_newuser_notifications', 'sbi_connected_accounts', 'sbi_theme_styles', 'sb_instagram_white_list_names', 'aioseo_activation_redirect', 'wpforms_activation_redirect', 'optin_monster_api_activation_redirect_disabled', 'seedprod_dismiss_setup_wizard', 'cff_plugin_do_activation_redirect', 'sbi_review_consent', 'sbi_dismiss_critical_notice', 'sbi_local_avatars_info', 'sbi_local_avatars', 'sbi_single_cache', 'sb_instagram_error_page', 'sbi_plugin_do_activation_redirect', 'sb_instagram_feed_notices', 'sbi_check_license_api_when_expires', 'sb_instagram_feed_group_notices', 'active_sitewide_plugins', 'instagram_feed_dismiss_lite', '_monsterinsights_activation_redirect', 'optin_monster_api_activation_redirect');
DELETE FROM wp_options WHERE option_name IN ('pushengage_activation_redirect', 'instagram_feed_rating_notice_waiting', 'sbinst_comment_cache');
DELETE FROM wp_options WHERE option_name LIKE 'sbi_license_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'sbi_delay_fetch_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sbi_ignore_dashboard_license_notice', 'sbi_ignore_new_user_sale_notice', 'sbi_onboarding', 'sbi_ignore_bfcm_sale_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('sbi_ignore_dashboard_license_notice', 'sbi_ignore_new_user_sale_notice', 'sbi_onboarding', 'sbi_ignore_bfcm_sale_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('sbi_ignore_dashboard_license_notice', 'sbi_ignore_new_user_sale_notice', 'sbi_onboarding', 'sbi_ignore_bfcm_sale_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sbi_ignore_dashboard_license_notice', 'sbi_ignore_new_user_sale_notice', 'sbi_onboarding', 'sbi_ignore_bfcm_sale_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';


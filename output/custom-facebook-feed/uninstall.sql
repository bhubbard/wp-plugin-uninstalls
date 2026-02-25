-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cff_oembed_token', 'cff_statuses', 'cff_style_settings', 'cff_connected_accounts', 'cff_license_key', 'cff_rating_notice', 'sb_callout', 'cff_license_status', 'cff_preserve_settings', 'cff_locale', 'cff_caching_type', 'cff_cache_cron_interval', 'cff_cache_cron_time', 'cff_cache_cron_am_pm', 'cff_cache_time', 'cff_cache_time_unit', 'cff_usage_tracking', 'cff_ajax', 'cff_license_data', 'cff_license_last_check_timestamp', 'cff_license_key_extensions', 'cff_license_status_extensions', 'cff_license_key_multifeed', 'cff_license_status_multifeed', 'cff_license_key_ext_reviews', 'cff_license_status_ext_reviews', 'cff_license_key_ext_carousel', 'cff_license_status_ext_carousel', 'cff_license_key_ext_date', 'cff_license_status_ext_date', 'cff_license_key_featured_post', 'cff_license_status_featured_post', 'cff_license_key_album', 'cff_license_status_album', 'cff_review_consent', 'cff_notifications', 'aioseo_activation_redirect', 'wpforms_activation_redirect', 'optin_monster_api_activation_redirect_disabled', 'seedprod_dismiss_setup_wizard', 'cff_usage_tracking_config', 'cff_page_id', 'cff_show_access_token', 'cff_show_others', 'cff_num_show', 'cff_post_limit', 'cff_page_type', 'cff_one_click_upgrade', 'sbi_oembed_token', 'cff_access_token');
DELETE FROM wp_options WHERE option_name IN ('cff_page_access_token', 'cff_db_version', 'cff_legacy_feed_settings', 'cff_page_slugs', 'cff_carousel_options', 'cff_title_length', 'cff_body_length', 'cff_error_reporter', 'cff_theme_styles', 'cff_dismiss_critical_notice', 'cff_settings', 'cff_plugin_do_activation_redirect', 'cff_newuser_notifications', 'facebook_feed_dismiss_lite', 'cff_ppca_access_token_invalid', 'custom_facebook_rating_notice_waiting', '_monsterinsights_activation_redirect', 'optin_monster_api_activation_redirect', 'pushengage_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'cff_license_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'cff_license_key_%';
DELETE FROM wp_options WHERE option_name LIKE '!cff_backup_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cff_ignore_ppca_notice', 'cff_ignore_new_user_sale_notice', 'cff_ignore_bfcm_sale_notice', 'cff_onboarding', 'cff_ppca_check_notice_dismiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('cff_ignore_ppca_notice', 'cff_ignore_new_user_sale_notice', 'cff_ignore_bfcm_sale_notice', 'cff_onboarding', 'cff_ppca_check_notice_dismiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('cff_ignore_ppca_notice', 'cff_ignore_new_user_sale_notice', 'cff_ignore_bfcm_sale_notice', 'cff_onboarding', 'cff_ppca_check_notice_dismiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cff_ignore_ppca_notice', 'cff_ignore_new_user_sale_notice', 'cff_ignore_bfcm_sale_notice', 'cff_onboarding', 'cff_ppca_check_notice_dismiss');
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


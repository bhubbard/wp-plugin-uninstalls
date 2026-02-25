-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rop_access_token', 'rop_use_remote_cron', 'rop_remote_cron_terms_agree', 'rop_data', 'rop_shortners_bitly', 'rop_facebook_domain_toast', 'rop_first_install_version', 'tweet_old_post_logger_flag', 'rop_is_new_user', 'rop_first_install_date', 'classic-editor-allow-users', 'classic-editor-replace', 'rop_last_post_shared', 'rop_data_migrated_tax', 'rop_one_time_share_accounts', 'tweet_old_post_pro_license_data', 'rop_menu_pointer_queued', 'rop_dashboard_pointers_queued', 'rop_is_sharing_cron_active', 'rop_toast', 'cwp_top_logged_in_users', 'cwp_top_app_id', 'cwp_top_app_secret', 'top_fb_token', 'cwp_top_lk_app_id', 'cwp_top_lk_app_secret', 'top_linkedin_token', 'cwp_top_consumer_key_tumblr', 'cwp_top_consumer_secret_tumblr', 'cwp_top_global_schedule', 'top_opt_post_formats', 'top_opt_excluded_post', 'cwp_topnew_active_status', 'rop_queue', 'rop_facebook_via_rs_app', 'rop_linkedin_refresh_token_notice', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'rop_no_posts_log_displayed', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count');
DELETE FROM wp_options WHERE option_name IN ('tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_type';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_type_custom_field';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_add_text';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_add_text_at';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_length';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_include_link';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_url_option';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_url_field';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_use_url_shortner';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_url_shortner';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_hashtag_option';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_hashtags';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_hashtag_length';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_hashtag_field';
DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_post_with_image';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'rop_maybe_publish_now_%';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('classic-editor-remember', 'wp_classic-editor-settings', 'rop_publish_now', 'rop_publish_now_accounts', 'rop_publish_now_status', 'rop-linkedin-api-notice-dismissed', 'rop-wp-cron-notice-dismissed', 'rop-cron-event-status-notice-dismissed', 'rop_publish_now_history', 'rop_custom_messages_group', 'rop_variation_index', 'rop_custom_images_group', 'rop_publish_now_notice_dismissed', 'rop-buffer-addon-notice-dismissed', 'rop-shortener-changed-notice-dismissed', 'rop-dropping-buffer-notice-dismissed', 'rop-remove-remote-cron-notice-dismissed', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('classic-editor-remember', 'wp_classic-editor-settings', 'rop_publish_now', 'rop_publish_now_accounts', 'rop_publish_now_status', 'rop-linkedin-api-notice-dismissed', 'rop-wp-cron-notice-dismissed', 'rop-cron-event-status-notice-dismissed', 'rop_publish_now_history', 'rop_custom_messages_group', 'rop_variation_index', 'rop_custom_images_group', 'rop_publish_now_notice_dismissed', 'rop-buffer-addon-notice-dismissed', 'rop-shortener-changed-notice-dismissed', 'rop-dropping-buffer-notice-dismissed', 'rop-remove-remote-cron-notice-dismissed', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('classic-editor-remember', 'wp_classic-editor-settings', 'rop_publish_now', 'rop_publish_now_accounts', 'rop_publish_now_status', 'rop-linkedin-api-notice-dismissed', 'rop-wp-cron-notice-dismissed', 'rop-cron-event-status-notice-dismissed', 'rop_publish_now_history', 'rop_custom_messages_group', 'rop_variation_index', 'rop_custom_images_group', 'rop_publish_now_notice_dismissed', 'rop-buffer-addon-notice-dismissed', 'rop-shortener-changed-notice-dismissed', 'rop-dropping-buffer-notice-dismissed', 'rop-remove-remote-cron-notice-dismissed', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('classic-editor-remember', 'wp_classic-editor-settings', 'rop_publish_now', 'rop_publish_now_accounts', 'rop_publish_now_status', 'rop-linkedin-api-notice-dismissed', 'rop-wp-cron-notice-dismissed', 'rop-cron-event-status-notice-dismissed', 'rop_publish_now_history', 'rop_custom_messages_group', 'rop_variation_index', 'rop_custom_images_group', 'rop_publish_now_notice_dismissed', 'rop-buffer-addon-notice-dismissed', 'rop-shortener-changed-notice-dismissed', 'rop-dropping-buffer-notice-dismissed', 'rop-remove-remote-cron-notice-dismissed', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rop_edit_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rop_edit_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rop_edit_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rop_edit_%';


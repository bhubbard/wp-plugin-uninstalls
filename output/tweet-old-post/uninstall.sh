#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rop_access_token'
wp option delete 'rop_use_remote_cron'
wp option delete 'rop_remote_cron_terms_agree'
wp option delete 'rop_data'
wp option delete 'rop_shortners_bitly'
wp option delete 'rop_facebook_domain_toast'
wp option delete 'rop_first_install_version'
wp option delete 'tweet_old_post_logger_flag'
wp option delete 'rop_is_new_user'
wp option delete 'rop_first_install_date'
wp option delete 'classic-editor-allow-users'
wp option delete 'classic-editor-replace'
wp option delete 'rop_last_post_shared'
wp option delete 'rop_data_migrated_tax'
wp option delete 'rop_one_time_share_accounts'
wp option delete 'tweet_old_post_pro_license_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp option delete 'rop_menu_pointer_queued'
wp option delete 'rop_dashboard_pointers_queued'
wp option delete 'rop_is_sharing_cron_active'
wp option delete 'rop_toast'
wp option delete 'cwp_top_logged_in_users'
wp option delete 'cwp_top_app_id'
wp option delete 'cwp_top_app_secret'
wp option delete 'top_fb_token'
wp option delete 'cwp_top_lk_app_id'
wp option delete 'cwp_top_lk_app_secret'
wp option delete 'top_linkedin_token'
wp option delete 'cwp_top_consumer_key_tumblr'
wp option delete 'cwp_top_consumer_secret_tumblr'
wp option delete 'cwp_top_global_schedule'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_type_custom_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_add_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_add_text_at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_tweet_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_include_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_url_option'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_url_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_use_url_shortner'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_url_shortner'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_hashtag_option'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_hashtags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_hashtag_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_custom_hashtag_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_opt_post_with_image'"
wp option delete 'top_opt_post_formats'
wp option delete 'top_opt_excluded_post'
wp option delete 'cwp_topnew_active_status'
wp option delete 'rop_queue'
wp option delete 'rop_facebook_via_rs_app'
wp option delete 'rop_linkedin_refresh_token_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rop_maybe_publish_now_%' OR option_name LIKE '_site_transient_rop_maybe_publish_now_%'"
wp transient delete 'rop_no_posts_log_displayed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'rop_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_publish_now'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_publish_now'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_publish_now'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_publish_now'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_publish_now_accounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_publish_now_accounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_publish_now_accounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_publish_now_accounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_publish_now_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_publish_now_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_publish_now_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_publish_now_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-linkedin-api-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-linkedin-api-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-linkedin-api-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-linkedin-api-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-wp-cron-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-cron-event-status-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-cron-event-status-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-cron-event-status-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-cron-event-status-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_publish_now_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_publish_now_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_publish_now_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_publish_now_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rop_edit_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rop_edit_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rop_edit_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rop_edit_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_custom_messages_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_custom_messages_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_custom_messages_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_custom_messages_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_variation_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_variation_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_variation_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_variation_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_custom_images_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_custom_images_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_custom_images_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_custom_images_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_publish_now_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_publish_now_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_publish_now_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_publish_now_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-buffer-addon-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-buffer-addon-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-buffer-addon-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-buffer-addon-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-shortener-changed-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-shortener-changed-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-shortener-changed-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-shortener-changed-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-dropping-buffer-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-dropping-buffer-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-dropping-buffer-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-dropping-buffer-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop-remove-remote-cron-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop-remove-remote-cron-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop-remove-remote-cron-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop-remove-remote-cron-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"

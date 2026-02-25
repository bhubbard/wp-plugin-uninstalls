#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'sbspf_settings'
wp option delete 'sby_statuses'
wp option delete 'sby_rating_notice'
wp option delete 'sby_review_consent'
wp option delete 'sby_notifications'
wp option delete 'sby_usage_tracking_config'
wp option delete 'sby_settings'
wp option delete 'sby_usage_tracking'
wp option delete 'sby_license_key'
wp option delete 'sby_license_data'
wp option delete 'sby_license_status'
wp option delete 'sby_one_click_upgrade'
wp option delete 'sby_islicence_upgraded'
wp option delete 'sby_upgraded_info'
wp option delete 'sbi_db_version'
wp option delete 'sbi_legacy_feed_settings'
wp option delete 'sbi_statuses'
wp option delete 'sb_instagram_settings'
wp option delete 'sbi_ver'
wp option delete 'sb_expired_tokens'
wp option delete 'sbi_cron_report'
wp option delete 'sb_instagram_errors'
wp option delete 'sb_instagram_ajax_status'
wp option delete 'sbi_hashtag_ids'
wp option delete 'sbi_usage_tracking_config'
wp option delete 'sbi_usage_tracking'
wp option delete 'sbi_oembed_token'
wp option delete 'sbi_top_api_calls'
wp option delete 'sbi_rating_notice'
wp option delete 'sbi_refresh_report'
wp option delete 'sbi_welcome_seen'
wp option delete 'sbi_notifications'
wp option delete 'sbi_newuser_notifications'
wp option delete 'sby_legacy_feed_settings'
wp option delete 'sbi_connected_accounts'
wp option delete 'sby_check_license_api_when_expires'
wp option delete 'sby_check_license_api_post_grace_period'
wp option delete 'sby_saved_channel_ids'
wp option delete 'sby_cron_report'
wp option delete 'sby_channel_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ajax_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'sby_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"
wp option delete 'sby_license_last_check_timestamp'
wp option delete 'sby_api_key_verification'
wp option delete 'settings'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wpforms_activation_redirect'
wp option delete 'optin_monster_api_activation_redirect_disabled'
wp option delete 'seedprod_dismiss_setup_wizard'
wp option delete 'sby_db_version'
wp option delete 'sby_channel_ids'
wp option delete 'sby_ajax_status'
wp option delete 'sby_newuser_notifications'
wp option delete 'sby_plugin_do_activation_redirect'

# Delete Transients
wp transient delete 'youtube_feed_dismiss_lite'
wp transient delete 'feeds_for_youtube_rating_notice_waiting'
wp transient delete 'sby_comment_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_doing_ajax_test' OR option_name LIKE '_site_transient_%_doing_ajax_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_delay_requests' OR option_name LIKE '_site_transient_%_delay_requests'"
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'pushengage_activation_redirect'
wp transient delete 'wp_mail_smtp_activation_redirect'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete 'sby_license_error_notice'
wp transient delete 'sb_youtube_object_cache_clear'

# Clear Cron Jobs
wp cron event delete 'sby_feed_update'
wp cron event delete 'sbspf_feed_update'
wp cron event delete 'sby_usage_tracking_cron'
wp cron event delete 'sbi_feed_update'
wp cron event delete 'sbi_usage_tracking_cron'
wp cron event delete 'sby_cron_job'
wp cron event delete 'sby_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_api_key_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_api_key_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_api_key_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_api_key_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%feed_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%feed_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%feed_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%feed_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%channel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%channel_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%channel_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%channel_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%channel_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%youtube_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%youtube_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%youtube_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%youtube_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%live_broadcast_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%live_broadcast_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%live_broadcast_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%live_broadcast_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%comment_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%comment_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%comment_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%comment_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%scheduled_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%scheduled_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%scheduled_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%scheduled_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%actual_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%actual_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%actual_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%actual_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%actual_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%actual_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%actual_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%actual_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_details_check_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_details_check_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_details_check_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_details_check_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_at_warning_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_at_warning_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_at_warning_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_at_warning_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_connect_warning_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_connect_warning_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_connect_warning_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_connect_warning_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sby_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sby_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sby_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sby_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"

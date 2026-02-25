#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbi_license_key'
wp option delete 'sbi_license_data'
wp option delete 'sbi_statuses'
wp option delete 'sbi_custom_templates_notice_dismissed'
wp option delete 'sb_callout'
wp option delete 'sbi_license_status'
wp option delete 'sb_instagram_settings'
wp option delete 'sbi_usage_tracking'
wp option delete 'sbi_cron_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sbi_license_status_%'"
wp option delete 'sbi_top_api_calls'
wp option delete 'sbi_rating_notice'
wp option delete 'sbi_license_last_check_timestamp'
wp option delete 'sbi_oembed_token'
wp option delete 'sbi_one_click_upgrade'
wp option delete 'cff_oembed_token'
wp option delete 'sbi_hashtag_ids_with_connected_accounts'
wp option delete 'sbi_db_version'
wp option delete 'sbi_legacy_feed_settings'
wp option delete 'sbi_ver'
wp option delete 'sb_expired_tokens'
wp option delete 'sb_instagram_errors'
wp option delete 'sb_instagram_ajax_status'
wp option delete 'sbi_hashtag_ids'
wp option delete 'sbi_usage_tracking_config'
wp option delete 'sbi_refresh_report'
wp option delete 'sbi_welcome_seen'
wp option delete 'sbi_notifications'
wp option delete 'sbi_newuser_notifications'
wp option delete 'sbi_connected_accounts'
wp option delete 'sbi_theme_styles'
wp option delete 'sb_instagram_white_list_names'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wpforms_activation_redirect'
wp option delete 'optin_monster_api_activation_redirect_disabled'
wp option delete 'seedprod_dismiss_setup_wizard'
wp option delete 'cff_plugin_do_activation_redirect'
wp option delete 'sbi_review_consent'
wp option delete 'sbi_dismiss_critical_notice'
wp option delete 'sbi_local_avatars_info'
wp option delete 'sbi_local_avatars'
wp option delete 'sbi_single_cache'
wp option delete 'sb_instagram_error_page'
wp option delete 'sbi_plugin_do_activation_redirect'
wp option delete 'sb_instagram_feed_notices'
wp option delete 'sbi_check_license_api_when_expires'
wp option delete 'sb_instagram_feed_group_notices'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'instagram_feed_dismiss_lite'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'pushengage_activation_redirect'
wp transient delete 'instagram_feed_rating_notice_waiting'
wp transient delete 'sbinst_comment_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sbi_delay_fetch_%' OR option_name LIKE '_site_transient_sbi_delay_fetch_%'"

# Clear Cron Jobs
wp cron event delete 'sbi_feed_update'
wp cron event delete 'sbi_usage_tracking_cron'
wp cron event delete 'sbi_cron_additional_batch'
wp cron event delete 'sb_instagram_feed_issue_email'
wp cron event delete 'sb_instagram_cron_job'
wp cron event delete 'sb_instagram_twicedaily'
wp cron event delete 'sbi_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbi_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbi_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbi_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbi_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbi_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbi_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbi_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbi_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_create_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_create_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_create_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_create_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbi_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbi_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbi_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbi_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbi_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctf_options'
wp option delete 'ctf_configure'
wp option delete 'ctf_version'
wp option delete 'ctf_customize'
wp option delete 'ctf_style'
wp option delete 'ctf_db_version'
wp option delete 'ctf_statuses'
wp option delete 'ctf_rating_notice'
wp option delete 'ctf_legacy_feed_settings'
wp option delete 'ctf_usage_tracking'
wp option delete 'ctf_license_key'
wp option delete 'ctf_license_data'
wp option delete 'ctf_check_license_api_when_expires'
wp option delete 'ctf_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ctf_license_status_%'"
wp option delete 'ctf_license_last_check_timestamp'
wp option delete 'ctf_review_consent'
wp option delete 'ctf_notifications'
wp option delete 'ctf_api_call_log'
wp option delete 'ctf_cron_report'
wp option delete 'ctf_errors'
wp option delete 'ctf_one_click_upgrade'
wp option delete 'ctf_ver'
wp option delete 'ctf_usage_tracking_config'
wp option delete 'ctf_local_avatars'
wp option delete 'ctf_cache_list'
wp option delete 'ctf_twitter_cards'
wp option delete 'ctf_theme_styles'
wp option delete 'ctf_welcome_seen'
wp option delete 'ctf_newuser_notifications'

# Delete Transients
wp transient delete 'custom_twitter_feeds_rating_notice_waiting'
wp transient delete 'instagram_feed_dismiss_lite'
wp transient delete 'twitter_feed_dismiss_lite'
wp transient delete 'sb_twitter_oauth_bearer_access_token_cache'

# Clear Cron Jobs
wp cron event delete 'ctf_feed_update'
wp cron event delete 'ctf_cron_job'
wp cron event delete 'ctf_usage_tracking_cron'
wp cron event delete 'ctf_cron_additional_batch'
wp cron event delete 'ctf_smash_twitter_feed_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctf_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctf_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctf_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctf_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctf_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctf_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctf_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctf_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctf_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctf_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctf_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctf_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctf_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctf_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctf_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctf_onboarding'"

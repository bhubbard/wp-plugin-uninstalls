#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cff_oembed_token'
wp option delete 'cff_statuses'
wp option delete 'cff_style_settings'
wp option delete 'cff_connected_accounts'
wp option delete 'cff_license_key'
wp option delete 'cff_rating_notice'
wp option delete 'sb_callout'
wp option delete 'cff_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cff_license_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cff_license_key_%'"
wp option delete 'cff_preserve_settings'
wp option delete 'cff_locale'
wp option delete 'cff_caching_type'
wp option delete 'cff_cache_cron_interval'
wp option delete 'cff_cache_cron_time'
wp option delete 'cff_cache_cron_am_pm'
wp option delete 'cff_cache_time'
wp option delete 'cff_cache_time_unit'
wp option delete 'cff_usage_tracking'
wp option delete 'cff_ajax'
wp option delete 'cff_license_data'
wp option delete 'cff_license_last_check_timestamp'
wp option delete 'cff_license_key_extensions'
wp option delete 'cff_license_status_extensions'
wp option delete 'cff_license_key_multifeed'
wp option delete 'cff_license_status_multifeed'
wp option delete 'cff_license_key_ext_reviews'
wp option delete 'cff_license_status_ext_reviews'
wp option delete 'cff_license_key_ext_carousel'
wp option delete 'cff_license_status_ext_carousel'
wp option delete 'cff_license_key_ext_date'
wp option delete 'cff_license_status_ext_date'
wp option delete 'cff_license_key_featured_post'
wp option delete 'cff_license_status_featured_post'
wp option delete 'cff_license_key_album'
wp option delete 'cff_license_status_album'
wp option delete 'cff_review_consent'
wp option delete 'cff_notifications'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wpforms_activation_redirect'
wp option delete 'optin_monster_api_activation_redirect_disabled'
wp option delete 'seedprod_dismiss_setup_wizard'
wp option delete 'cff_usage_tracking_config'
wp option delete 'cff_page_id'
wp option delete 'cff_show_access_token'
wp option delete 'cff_show_others'
wp option delete 'cff_num_show'
wp option delete 'cff_post_limit'
wp option delete 'cff_page_type'
wp option delete 'cff_one_click_upgrade'
wp option delete 'sbi_oembed_token'
wp option delete 'cff_access_token'
wp option delete 'cff_page_access_token'
wp option delete 'cff_db_version'
wp option delete 'cff_legacy_feed_settings'
wp option delete 'cff_page_slugs'
wp option delete 'cff_carousel_options'
wp option delete 'cff_title_length'
wp option delete 'cff_body_length'
wp option delete 'cff_error_reporter'
wp option delete 'cff_theme_styles'
wp option delete 'cff_dismiss_critical_notice'
wp option delete 'cff_settings'
wp option delete 'cff_plugin_do_activation_redirect'
wp option delete 'cff_newuser_notifications'

# Delete Transients
wp transient delete 'facebook_feed_dismiss_lite'
wp transient delete 'cff_ppca_access_token_invalid'
wp transient delete 'custom_facebook_rating_notice_waiting'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'pushengage_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_!cff_backup_%' OR option_name LIKE '_site_transient_!cff_backup_%'"

# Clear Cron Jobs
wp cron event delete 'cff_cache_cron'
wp cron event delete 'cff_cron_job'
wp cron event delete 'cff_usage_tracking_cron'
wp cron event delete 'group_post_scheduler_cron'
wp cron event delete 'cff_feed_issue_email'
wp cron event delete 'cff_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cff_ignore_ppca_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cff_ignore_ppca_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cff_ignore_ppca_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cff_ignore_ppca_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cff_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cff_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cff_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cff_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cff_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cff_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cff_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cff_ignore_bfcm_sale_notice'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cff_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cff_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cff_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cff_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cff_ppca_check_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cff_ppca_check_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cff_ppca_check_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cff_ppca_check_notice_dismiss'"

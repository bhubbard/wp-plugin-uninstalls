#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbr_apikeys_limit'
wp option delete 'sbr_statuses'
wp option delete 'sbr_rating_notice'
wp option delete 'sbr_review_consent'
wp option delete 'sbr_notifications'
wp option delete 'sbr_apikeys'
wp option delete 'sbr_settings'
wp option delete 'sbr_bulk_sources'
wp option delete 'sbr_bulk_woocommerce'
wp option delete 'cff_style_settings'
wp option delete 'sbr_license_key'
wp option delete 'sbr_license_data'
wp option delete 'sbr_license_status'
wp option delete 'sbr_one_click_upgrade'
wp option delete 'sbr_db_version'
wp option delete 'sbr_usage_tracking_config'
wp option delete 'sbi_legacy_feed_settings'

# Delete Transients
wp transient delete 'reviews_feed_rating_notice_waiting'

# Clear Cron Jobs
wp cron event delete 'sbr_usage_tracking_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbr_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbr_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbr_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbr_ignore_dashboard_license_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbr_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbr_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbr_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbr_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbr_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbr_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbr_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbr_ignore_bfcm_sale_notice'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbtt_statuses'
wp option delete 'sbtt_resize_images_data'
wp option delete 'sbtt_global_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'sbtt_rating_notice'
wp option delete 'sbtt_review_consent'
wp option delete 'sbtt_one_click_upgrade'
wp option delete 'sbtt_islicence_upgraded'
wp option delete 'sbtt_upgraded_info'
wp option delete 'sbtt_db_version'
wp option delete 'sbtt_usage_tracking_config'
wp option delete 'sbtt_settings'

# Delete Transients
wp transient delete 'tiktok_feed_rating_notice_waiting'
wp transient delete 'sbtt_heic_capability'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sbtt_new_source_data_%' OR option_name LIKE '_site_transient_sbtt_new_source_data_%'"

# Clear Cron Jobs
wp cron event delete 'sbtt_refresh_token_routine'
wp cron event delete 'sbtt_feed_update_routine'
wp cron event delete 'sbtt_usage_tracking_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbtt_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbtt_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbtt_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbtt_ignore_new_user_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbtt_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbtt_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbtt_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbtt_ignore_bfcm_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"

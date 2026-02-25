#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popupkit_onboard_status'
wp option delete 'pbb-settings-tabs'
wp option delete '__pbb_oppai__'
wp option delete '__pbb_license_key__'
wp option delete 'popupkit_templates_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"

# Clear Cron Jobs
wp cron event delete 'pbb_analytics_expiry_clean'
wp cron event delete 'pbb_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbb_posts_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbb_posts_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbb_posts_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbb_posts_fonts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abTest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abTest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abTest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abTest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaignType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaignType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaignType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaignType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scheduleDateTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scheduleDateTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scheduleDateTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scheduleDateTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scheduleOnDateValue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scheduleOnDateValue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scheduleOnDateValue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scheduleOnDateValue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scheduleOffDateValue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scheduleOffDateValue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scheduleOffDateValue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scheduleOffDateValue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scheduleTimeZone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scheduleTimeZone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scheduleTimeZone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scheduleTimeZone'"

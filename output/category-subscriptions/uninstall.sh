#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'category_subscription_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cat_sub_%'"
wp option delete 'cat_sub_last_daily_message_run'
wp option delete 'cat_sub_last_weekly_message_run'
wp option delete 'cat_sub_install_unixtime'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_run'"

# Clear Cron Jobs
wp cron event delete 'my_cat_sub_prepare_daily_messages'
wp cron event delete 'my_cat_sub_prepare_weekly_messages'
wp cron event delete 'my_cat_sub_send_individual_messages'
wp cron event delete 'my_cat_sub_send_digested_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cat_sub_delivery_format_pref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cat_sub_delivery_format_pref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cat_sub_delivery_format_pref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cat_sub_delivery_format_pref'"

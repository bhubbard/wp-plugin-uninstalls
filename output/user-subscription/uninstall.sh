#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_subscription_data'

# Clear Cron Jobs
wp cron event delete 'user_subscription_daily_event'
wp cron event delete 'user_subscription_weekly_event'
wp cron event delete 'user_subscription_monthly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscriber_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscriber_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscriber_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscriber_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscriber_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscriber_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscriber_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscriber_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscriber_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscriber_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscriber_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscriber_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscriber_activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscriber_activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscriber_activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscriber_activation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_updated_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_updated_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_updated_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_updated_post_ids'"

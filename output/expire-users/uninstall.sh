#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expire_users_notification_message'
wp option delete 'expire_users_notification_admin_message'
wp option delete 'expire_users_default_expire_settings'

# Clear Cron Jobs
wp cron event delete 'expire_user_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_user_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_user_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_user_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_user_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_user_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_user_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_user_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_user_expired'"

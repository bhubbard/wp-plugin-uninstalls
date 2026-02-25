#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gianism_notice_log'
wp option delete 'wpg_analytics_profile'
wp option delete 'wpg_analytics_token'
wp option delete 'gianism_facebook_admin_token'
wp option delete 'gianism_facebook_admin_refreshed'
wp option delete 'gianism_facebook_admin_id'
wp option delete 'wp_gianism_option'

# Clear Cron Jobs
wp cron event delete 'gianism_bot'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpg_unknown_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpg_unknown_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpg_unknown_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpg_unknown_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"

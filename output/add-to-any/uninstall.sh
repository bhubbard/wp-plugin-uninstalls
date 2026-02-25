#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'addtoany_options'

# Clear Cron Jobs
wp cron event delete 'addtoany_refresh_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"

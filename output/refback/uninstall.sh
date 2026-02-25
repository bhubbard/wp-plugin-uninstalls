#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webmention_support_post_types'
wp option delete 'refback_home_mentions'

# Clear Cron Jobs
wp cron event delete 'do_refbacks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referer_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referer_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referer_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referer_count'"

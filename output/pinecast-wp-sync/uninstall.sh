#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pinecast_feeds'
wp option delete 'pinecast'

# Clear Cron Jobs
wp cron event delete 'pinecast/feed_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinecast_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinecast_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinecast_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinecast_image'"

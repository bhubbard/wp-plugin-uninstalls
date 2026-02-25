#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'categories_filter'
wp option delete 'show_unique'

# Clear Cron Jobs
wp cron event delete 'ppw_cache_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

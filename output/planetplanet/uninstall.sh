#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planetplanet_options'

# Delete Transients
wp transient delete 'planetplanet_category_linkmap'

# Clear Cron Jobs
wp cron event delete 'pp_update_feeds'
wp cron event delete 'pp_purge_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_url'"

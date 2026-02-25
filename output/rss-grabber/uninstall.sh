#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_grab_author'
wp option delete 'rss_grab_name'
wp option delete 'rss_grab_url'
wp option delete 'rss_grab_video'

# Clear Cron Jobs
wp cron event delete 'rss_graber_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

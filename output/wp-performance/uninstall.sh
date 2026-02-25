#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Clear Cron Jobs
wp cron event delete 'wpp_prepare_preload'
wp cron event delete 'wpp_preload_cache'
wp cron event delete 'wpp_db_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpp_thumb_regenerated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpp_thumb_regenerated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpp_thumb_regenerated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpp_thumb_regenerated'"

#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'aifstt_daily_media_file_size_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aifstt_media_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aifstt_media_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aifstt_media_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aifstt_media_file_size'"

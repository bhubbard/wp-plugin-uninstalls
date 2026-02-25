#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wpts_tags_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schedule_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schedule_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schedule_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schedule_tag'"

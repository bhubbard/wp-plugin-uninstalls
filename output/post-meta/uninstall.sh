#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'post_meta_schedule_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'group_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'group_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'group_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'group_count_%'"

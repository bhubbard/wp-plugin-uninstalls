#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postrank_options'

# Clear Cron Jobs
wp cron event delete 'postrank_weekly_restat_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_rank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_rank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_rank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_rank'"

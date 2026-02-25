#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lh_archived_post_status_run'
wp cron event delete 'lh_archived_post_status_initial'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lh_archive_post_status-post_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lh_archive_post_status-post_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lh_archive_post_status-post_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lh_archive_post_status-post_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-post_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-post_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-post_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-post_expires'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wc_count_comments'

# Clear Cron Jobs
wp cron event delete 'wpbd_run_scheduled_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delete_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delete_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delete_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delete_options'"

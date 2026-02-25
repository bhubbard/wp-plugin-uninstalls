#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postchat_options'

# Clear Cron Jobs
wp cron event delete 'postchat_add_summary_event'
wp cron event delete 'postchat_maintenance_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postchat_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postchat_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postchat_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postchat_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postchat_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postchat_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postchat_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postchat_content_hash'"

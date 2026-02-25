#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tilda_maps'
wp option delete 'tilda_map_pages'
wp option delete 'tilda_options'
wp option delete 'tilda_projects'
wp option delete 'tilda_pages'

# Clear Cron Jobs
wp cron event delete 'tilda_sync_single_event'
wp cron event delete 'tilda_sync_single_export_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tilda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tilda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tilda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tilda'"

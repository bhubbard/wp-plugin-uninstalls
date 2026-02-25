#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multisite_event_sync_sites'

# Clear Cron Jobs
wp cron event delete 'multisite_event_sync_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imported_from_subsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imported_from_subsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imported_from_subsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imported_from_subsite'"

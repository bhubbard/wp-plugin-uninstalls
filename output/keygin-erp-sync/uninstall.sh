#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keygin_settings'
wp option delete 'keygin_sync_enabled'
wp option delete 'keygin_next_sync'
wp option delete 'keygin_last_sync'
wp option delete 'keygin_erp_sync_active'

# Delete Transients
wp transient delete 'keygin_warehouses'
wp transient delete 'keygin_sync_running'
wp transient delete 'keygin_warehouses_fetched_at'

# Clear Cron Jobs
wp cron event delete 'keygin_sync_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keygin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keygin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keygin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keygin_id'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'action_scheduler_migration_status'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'docketcache_gc'
wp cron event delete 'docketcache_optimizedb'
wp cron event delete 'docketcache_checkversion'
wp cron event delete 'do_pings'
wp cron event delete 'woocommerce_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"

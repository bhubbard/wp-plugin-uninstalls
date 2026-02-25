#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wac_subdomain'
wp option delete 'wac_login'
wp option delete 'wac_key'
wp option delete 'wooac_orders_send_from'
wp option delete 'wooms_orders_send_from'
wp option delete 'wac_sync_time'
wp option delete 'wac_sync_disable'

# Delete Transients
wp transient delete 'wac_last_start'

# Clear Cron Jobs
wp cron event delete 'wooamoconnector_cron_worker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooamoc_send_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooamoc_send_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooamoc_send_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooamoc_send_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wac_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wac_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wac_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wac_id'"

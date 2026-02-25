#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dogbytemarketing_sync_mautic_settings'
wp option delete 'dogbytemarketing_sync_mautic_start_time'
wp option delete 'dogbytemarketing_sync_mautic_total_orders'
wp option delete 'dogbytemarketing_last_sync_mautic_order_index'
wp option delete 'dogbytemarketing_sync_mautic_past_orders_complete'
wp option delete 'mautic_sync_settings'

# Delete Transients
wp transient delete 'dogbytemarketing_mautic_access_token'

# Clear Cron Jobs
wp cron event delete 'dogbytemarketing_sync_mautic_past_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mautic_lead_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mautic_lead_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mautic_lead_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mautic_lead_id'"

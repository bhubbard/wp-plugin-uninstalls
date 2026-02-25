#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getpaid_redirected_to_inventory_settings'
wp option delete 'getpaid_item_inventory_scheduled_cron'
wp option delete 'getpaid_item_inventory_db_version'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'getpaid_item_inventory_cancel_invoices_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_reduced_stock_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_reduced_stock_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_reduced_stock_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_reduced_stock_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"

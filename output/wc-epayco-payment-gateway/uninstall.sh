#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'

# Delete Transients
wp transient delete 'imma_wm_ads_key'

# Clear Cron Jobs
wp cron event delete 'woocommerce_maintenance_task_event_epayco'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epayco_reference_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epayco_reference_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epayco_reference_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epayco_reference_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"

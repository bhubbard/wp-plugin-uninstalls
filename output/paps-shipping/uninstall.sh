#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_paps_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paps_task_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paps_task_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paps_task_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paps_task_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paps_pickup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paps_pickup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paps_pickup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paps_pickup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paps_delivery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paps_delivery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paps_delivery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paps_delivery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paps_pickup_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paps_pickup_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paps_pickup_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paps_pickup_tracking_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paps_delivery_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paps_delivery_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paps_delivery_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paps_delivery_tracking_link'"

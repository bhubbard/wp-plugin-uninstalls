#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zonelogistic_api_token'
wp option delete 'zonelogistic_min_order_date'
wp option delete 'zonelogistic_order_status'
wp option delete 'zonelogistic_shipping_map'

# Clear Cron Jobs
wp cron event delete 'zonelogistic_retry_order_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zonelogistic_own_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zonelogistic_own_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zonelogistic_own_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zonelogistic_own_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zonelogistic_sku_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zonelogistic_sku_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zonelogistic_sku_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zonelogistic_sku_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'courier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'courier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'courier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'courier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zonelogistic_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zonelogistic_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zonelogistic_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zonelogistic_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivered_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivered_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivered_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivered_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zonelogistic_retry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zonelogistic_retry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zonelogistic_retry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zonelogistic_retry_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosb_ids'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_Gokada_delivery_settings'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_delivery_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_delivery_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_delivery_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_delivery_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_delivery_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_delivery_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_delivery_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_delivery_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gokada_delivery_order_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gokada_delivery_order_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gokada_delivery_order_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gokada_delivery_order_response'"

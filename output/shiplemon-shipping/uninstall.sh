#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_unit_weight'
wp option delete 'woocommerce_shiplemon_shipping_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shiplemon_shipment_rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shiplemon_shipment_rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shiplemon_shipment_rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shiplemon_shipment_rate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shiplemon_shipment_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shiplemon_shipment_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shiplemon_shipment_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shiplemon_shipment_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shiplemon_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shiplemon_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shiplemon_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shiplemon_shipment_id'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fuvarhu_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_marked_d_by_fuvar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_marked_d_by_fuvar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_marked_d_by_fuvar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_marked_d_by_fuvar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_pickup_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_pickup_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_pickup_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_pickup_data'"

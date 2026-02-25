#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'th_advance_product_search'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_thaps_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_thaps_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_thaps_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_thaps_layout'"

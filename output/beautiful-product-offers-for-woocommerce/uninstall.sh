#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbpo_qty_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbpo_qty_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbpo_qty_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbpo_qty_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbpo_main_product_in_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbpo_main_product_in_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbpo_main_product_in_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbpo_main_product_in_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbpo_current_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbpo_current_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbpo_current_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbpo_current_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbpo_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbpo_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbpo_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbpo_price_text'"

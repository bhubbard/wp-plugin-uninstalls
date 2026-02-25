#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_product_counter_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_product_counter_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_product_counter_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_product_counter_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_product_counter_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'simple_product_counter_meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'simple_product_counter_meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'simple_product_counter_meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'simple_product_counter_meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_product_counter_total_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_product_counter_total_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_product_counter_total_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_product_counter_total_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_product_counter_range_meta_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_product_counter_range_meta_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_product_counter_range_meta_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_product_counter_range_meta_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_product_counter_range_meta_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_product_counter_range_meta_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_product_counter_range_meta_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_product_counter_range_meta_clicks'"

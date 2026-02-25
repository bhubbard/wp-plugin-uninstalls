#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_require_shipping_address'
wp option delete 'woocommerce_ship_to_same_address'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_enable_shipping_calc'

# Clear Cron Jobs
wp cron event delete 'update_maha_orders_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maha_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maha_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maha_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maha_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"

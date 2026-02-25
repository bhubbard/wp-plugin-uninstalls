#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bluetape_settings'
wp option delete 'btpg_min_order_total'
wp option delete 'btpg_allowed_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saved_cart_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saved_cart_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saved_cart_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saved_cart_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluetape_link_order_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluetape_link_order_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluetape_link_order_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluetape_link_order_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saved_woocommerce_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saved_woocommerce_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saved_woocommerce_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saved_woocommerce_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_order_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_order_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_order_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_order_data'"

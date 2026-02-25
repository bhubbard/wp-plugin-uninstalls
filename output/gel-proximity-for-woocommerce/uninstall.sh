#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_returns_manager_front_page_id'"
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gelproximity_order_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gelproximity_order_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gelproximity_order_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gelproximity_order_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gel_pudo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gel_pudo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gel_pudo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gel_pudo_id'"

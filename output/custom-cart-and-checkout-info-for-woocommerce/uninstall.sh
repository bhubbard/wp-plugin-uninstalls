#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_custom_cart_info_item_enabled'
wp option delete 'alg_wc_custom_cart_info_enabled'
wp option delete 'alg_wc_custom_cart_info_item_before'
wp option delete 'alg_wc_custom_cart_info_item_after'
wp option delete 'alg_wc_custom_cart_info_content'
wp option delete 'alg_wc_custom_cart_info_hook'
wp option delete 'alg_wc_custom_cart_info_priority'
wp option delete 'alg_wc_custom_cart_info_total_number'
wp option delete 'alg_wc_custom_cart_info_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"

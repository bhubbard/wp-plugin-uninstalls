#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dismissed-buffalo_courier_disclaimer'
wp option delete 'buffalo_courier_dismissed_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buffalo_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buffalo_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buffalo_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buffalo_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buffalo_order_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buffalo_order_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buffalo_order_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buffalo_order_time'"

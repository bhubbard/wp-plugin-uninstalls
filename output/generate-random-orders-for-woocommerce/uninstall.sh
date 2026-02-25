#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpz_woocommerce_random_orders_first_activate'
wp option delete 'wpz_woocommerce_random_orders_notice_hidden'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"

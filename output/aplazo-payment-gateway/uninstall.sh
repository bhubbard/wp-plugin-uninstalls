#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manage_stock'

# Clear Cron Jobs
wp cron event delete 'cancel_unpaid_orders_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"

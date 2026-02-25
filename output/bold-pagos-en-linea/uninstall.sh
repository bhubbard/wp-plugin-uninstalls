#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_logo'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hold_stock_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_test_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_test_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_test_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_test_order'"

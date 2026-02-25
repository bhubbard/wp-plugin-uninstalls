#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'niwoopv_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_niwoopv_product_vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_niwoopv_product_vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_niwoopv_product_vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_niwoopv_product_vendor_id'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_notify_no_stock_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smifw_location_stocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smifw_location_stocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smifw_location_stocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smifw_location_stocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"

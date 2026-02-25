#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_coupon_free_shipping_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_coupon_free_shipping_discount_text_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"

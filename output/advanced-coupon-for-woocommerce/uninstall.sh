#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_tax_display_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_coupon_for_woocommerce_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_coupon_for_woocommerce_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_coupon_for_woocommerce_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_coupon_for_woocommerce_settings'"

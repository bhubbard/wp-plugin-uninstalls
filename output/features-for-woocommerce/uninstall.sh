#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'ffw_exclude_product_from_coupon_code_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ffw_coupon_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ffw_coupon_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ffw_coupon_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ffw_coupon_excluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ffw_hide_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ffw_hide_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ffw_hide_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ffw_hide_coupon'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wyse_me_gift_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wyse_me_gift_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wyse_me_gift_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wyse_me_gift_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount_tax'"

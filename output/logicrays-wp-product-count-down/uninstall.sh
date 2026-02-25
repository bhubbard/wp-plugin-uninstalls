#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lr_count_down_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lr_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lr_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lr_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lr_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lr_sale_price_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lr_sale_price_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lr_sale_price_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lr_sale_price_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lr_sale_price_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lr_sale_price_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lr_sale_price_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lr_sale_price_to'"

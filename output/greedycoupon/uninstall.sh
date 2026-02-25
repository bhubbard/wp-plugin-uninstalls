#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gd_hide_theme_header'
wp option delete 'gd_permalink'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupons_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupons_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupons_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupons_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_short_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_short_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_short_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_short_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_affiliate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rzilla_hosting_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rzilla_hosting_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rzilla_hosting_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rzilla_hosting_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id'"

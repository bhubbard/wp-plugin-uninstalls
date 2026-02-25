#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dacl_display_options'
wp option delete 'dacl_extra_options'
wp option delete 'dacl_first_activation'
wp option delete 'dacl_version'
wp option delete 'dacl_sticky_coupons'
wp option delete 'dacl_styling_options'

# Clear Cron Jobs
wp cron event delete 'dacl_expire'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_call_to_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_call_to_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_call_to_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_call_to_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_css_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_css_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_css_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_css_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_discount_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_discount_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_discount_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_discount_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_discount_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_discount_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_discount_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_discount_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_discount_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_discount_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_discount_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_discount_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_discount_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_discount_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_discount_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_discount_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_direct_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_direct_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_direct_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_direct_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_exclude_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_exclude_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_exclude_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_exclude_archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_exclude_rotation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_exclude_rotation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_exclude_rotation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_exclude_rotation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_exclude_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_exclude_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_exclude_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_exclude_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dacl_coupon_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dacl_coupon_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dacl_coupon_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dacl_coupon_post_id'"

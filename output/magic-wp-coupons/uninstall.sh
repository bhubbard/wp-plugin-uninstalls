#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dv_disable_single_view'
wp option delete 'dv_coupon_template'
wp option delete 'dv_display_likes'
wp option delete 'dv_display_dislikes'
wp option delete 'dv_display_clicks'
wp option delete 'tgt_favicon'
wp option delete 'dv_use_store_imgs'
wp option delete 'dv_use_timthumb'
wp option delete 'dv_use_cloaked_url'
wp option delete 'dv_dis_facebook'
wp option delete 'dv_dis_twitter'
wp option delete 'dv_dis_gplus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_store_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_store_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_store_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_store_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'liked_dis_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'liked_dis_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'liked_dis_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'liked_dis_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clicked_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clicked_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clicked_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clicked_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_expiry_date'"

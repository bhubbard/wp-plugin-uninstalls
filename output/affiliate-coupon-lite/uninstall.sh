#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affiliate_coupon_lite_settings'
wp option delete 'cp_deal_text'
wp option delete 'cp_coupon_text'
wp option delete 'cp_dealac_text'

# Delete Transients
wp transient delete 'cp_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_store_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_store_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_store_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_store_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_affiliate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_popular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_popular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_popular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_popular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_coupon_lite_voteup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_coupon_lite_voteup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_coupon_lite_voteup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_coupon_lite_voteup'"

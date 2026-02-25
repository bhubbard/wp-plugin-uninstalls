#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fodw_coupon_id'
wp option delete '_fodw_configuration'
wp option delete 'woocommerce_enable_coupons'

# Delete Transients
wp transient delete 'wooextend_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"

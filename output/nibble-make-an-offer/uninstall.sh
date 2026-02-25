#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nibble_api_url'
wp option delete 'nibble_api_key'
wp option delete 'nibble_secret_key'
wp option delete 'nibble_on_product_page'
wp option delete 'nibble_on_cart_page'
wp option delete 'nibble_cart_product'
wp option delete 'nibble_enable'
wp option delete 'nibble_manual'
wp option delete 'nibble_custom_css'
wp option delete 'nibble_discount_type'
wp option delete 'nibble_cross_sell_id'

# Delete Transients
wp transient delete 'nibble-activation-notice'

# Clear Cron Jobs
wp cron event delete 'nibble_add_every_five_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nibble_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nibble_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nibble_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nibble_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nibble_data_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nibble_data_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nibble_data_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nibble_data_processed'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nibble_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nibble_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nibble_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nibble_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nibble_subproduct_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nibble_subproduct_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nibble_subproduct_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nibble_subproduct_id'"

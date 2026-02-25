#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'wc_points_rewards_partial_redemption_enabled'
wp option delete 'wc_points_rewards_cart_min_discount'
wp option delete 'wc_points_rewards_points_tax_application'
wp option delete 'wc_points_rewards_cart_max_discount'
wp option delete 'wc_points_rewards_points_label'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'ams_users_can_register'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_additional'
wp option delete 'wc_points_rewards_write_review_points'
wp option delete 'wc_points_rewards_account_signup_points'
wp option delete 'wc_points_rewards_points_expiry'
wp option delete 'wc_points_rewards_points_expire_points_since'
wp option delete 'wc_points_rewards_version'
wp option delete 'wc_points_rewards_earn_points_ratio'
wp option delete 'wc_points_rewards_earn_points_rounding'
wp option delete 'wc_points_rewards_redeem_points_ratio'
wp option delete 'wc_points_rewards_max_discount'
wp option delete 'wc_points_rewards_points_expiry_number'
wp option delete 'wc_points_rewards_points_expiry_period'
wp option delete 'wc_points_rewards_single_product_message'
wp option delete 'wc_points_rewards_variable_product_message'
wp option delete 'wc_points_rewards_earn_points_message'
wp option delete 'wc_points_rewards_redeem_points_message'
wp option delete 'wc_points_rewards_thank_you_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_redeemed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_redeemed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_redeemed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_redeemed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ams_wc_points_redeemed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ams_wc_points_redeemed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ams_wc_points_redeemed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ams_wc_points_redeemed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ams_wc_points_rewards_discount_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ams_wc_points_rewards_discount_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ams_wc_points_rewards_discount_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ams_wc_points_rewards_discount_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ams_wc_points_rewards_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ams_wc_points_rewards_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ams_wc_points_rewards_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ams_wc_points_rewards_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_max_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_max_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_max_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_max_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ams_bookmarks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ams_bookmarks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ams_bookmarks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ams_bookmarks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ams_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ams_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ams_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ams_wishlist'"

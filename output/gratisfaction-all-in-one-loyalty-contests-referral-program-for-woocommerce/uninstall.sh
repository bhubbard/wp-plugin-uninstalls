#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grconnect_appid'
wp option delete 'grconnect_payload'
wp option delete 'grconnect_shop_id'
wp option delete 'grconnect_register'
wp option delete 'grconnect_secret'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete 'grconnect_admin_email'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'wc_points_rewards_earn_points_message'
wp option delete 'wc_points_rewards_thank_you_message'
wp option delete 'wc_points_rewards_redeem_points_message'
wp option delete 'wc_points_rewards_partial_redemption_enabled'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wc_points_rewards_cart_max_discount'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_points_rewards_single_product_message'
wp option delete 'wc_points_rewards_variable_product_message'
wp option delete 'wc_points_rewards_max_discount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gr_applied_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gr_applied_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gr_applied_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gr_applied_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_modifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_modifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_modifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_modifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_min_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_max_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_max_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_max_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_max_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_points_rewnewal_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_points_rewnewal_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_points_rewnewal_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_points_rewnewal_points'"

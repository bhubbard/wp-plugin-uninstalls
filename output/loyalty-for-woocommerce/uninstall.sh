#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loyalty_notification_email'
wp option delete 'loyalty_customization_my_account'
wp option delete 'wp_user_roles'
wp option delete 'loyalty_extra_levelup_points_rules'
wp option delete 'loyalty_extra_points_rules'
wp option delete 'loyalty_points_deduction_status'
wp option delete 'loyalty_levels_rules'
wp option delete 'loyalty_points_earning_status'
wp option delete 'loyalty_points_earning_rules'
wp option delete 'loyalty_points_earning_option'
wp option delete 'loyalty_points_rounding'
wp option delete 'loyalty_points_using_rules'
wp option delete 'loyalty_customization_shop_page'
wp option delete 'loyalty_customization_product_page'
wp option delete 'loyalty_customization_cart_checkout'
wp option delete 'loyalty_levels_roles'
wp option delete 'loyalty_customization_levels'
wp option delete 'loyalty_customization_membercard'
wp option delete 'loyalty_customization_message_icon'
wp option delete 'loyalty_referral_link_enabled'
wp option delete 'loyalty_link_referrer_points'
wp option delete 'loyalty_link_referee_points'
wp option delete 'loyalty_referral_coupon_enabled'
wp option delete 'loyalty_referral_coupon_format'
wp option delete 'loyalty_referee_discount_type'
wp option delete 'loyalty_coupon_referrer_points'
wp option delete 'loyalty_coupon_referee_discounts'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'yoswc_loyalty_version'

# Delete Transients
wp transient delete 'yoswc_loyalty_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_earning_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_earning_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_earning_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_earning_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loyalty_last_daily_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loyalty_last_daily_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loyalty_last_daily_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loyalty_last_daily_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_points_awarded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_points_awarded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_points_awarded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_points_awarded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_points_deducted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_points_deducted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_points_deducted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_points_deducted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yoswc_loyalty_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yoswc_loyalty_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yoswc_loyalty_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yoswc_loyalty_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yoswc_loyalty_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yoswc_loyalty_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yoswc_loyalty_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yoswc_loyalty_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_loyalty_premium_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_loyalty_premium_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_loyalty_premium_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_loyalty_premium_ads_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'applied_loyalty_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'applied_loyalty_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'applied_loyalty_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'applied_loyalty_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"

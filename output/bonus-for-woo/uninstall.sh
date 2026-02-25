#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'bonus_option_name'
wp option delete 'bfw_alternate_server'
wp option delete 'cashback_orders_to_recount'
wp option delete 'bfw_version_db'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete 'bonus-for-woo-offline-product'
wp option delete 'bfw_partial_statistics'

# Delete Transients
wp transient delete 'bfw_pro_updated'
wp transient delete 'bfw_stat_user_status_count'

# Clear Cron Jobs
wp cron event delete 'bfw_clear_old_cashback'
wp cron event delete 'bfw_search_birthday'
wp cron event delete 'bfw_daily_cashback_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfw_points_referral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfw_points_referral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfw_points_referral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfw_points_referral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfw_points_referral_invite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfw_points_referral_invite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfw_points_referral_invite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfw_points_referral_invite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points_every_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points_every_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points_every_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points_every_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_constant_cashback_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_constant_cashback_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_constant_cashback_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_constant_cashback_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_constant_cashback_percentage_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_constant_cashback_percentage_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_constant_cashback_percentage_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_constant_cashback_percentage_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f14'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f14'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f14'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f14'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'computy_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'computy_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'computy_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'computy_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'daily_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'daily_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'daily_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'daily_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'computy_fast_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'computy_fast_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'computy_fast_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'computy_fast_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail_remove_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail_remove_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail_remove_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail_remove_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'this_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'this_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'this_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'this_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfw_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfw_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfw_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfw_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"

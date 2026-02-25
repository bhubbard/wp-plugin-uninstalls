#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_razorpay_settings'
wp option delete 'rzp1cc_hmac_secret'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woo-discount-config-v2'
wp option delete 'pys_core'
wp option delete 'wcfm_shipping_options'
wp option delete 'woocommerce_cod_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'rzp_hpos'
wp option delete 'rzp_woocommerce_current_version'
wp option delete 'rzp_afd_limited_offers'
wp option delete 'rzp_afd_show_discount_amount'
wp option delete 'rzp_afd_additional_offers'
wp option delete 'rzp_afd_limited_emi_providers'
wp option delete 'rzp_afd_limited_cardless_emi_providers'
wp option delete 'rzp_afd_limited_pay_later_providers'
wp option delete 'rzp_afd_enable'
wp option delete 'rzp_afd_enable_test_mode'
wp option delete 'webhook_secret'
wp option delete 'rzp_webhook_secret'
wp option delete 'rzp_afd_feature_checked'
wp option delete 'rzp_afd_enable_emi'
wp option delete 'rzp_afd_enable_cardless_emi'
wp option delete 'rzp_afd_enable_pay_later'
wp option delete 'rzp_afd_theme_color'
wp option delete 'rzp_afd_enable_dark_logo'
wp option delete 'webhook_enable_flag'
wp option delete 'rzp_subscription_webhook_enable_flag'
wp option delete 'woocommerce_currency'
wp option delete 'key_id'
wp option delete 'key_secret'
wp option delete 'rzp_wc_last_key_id'
wp option delete 'rzp_rtb_enable'
wp option delete 'rzp_rtb_feature_checked'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'wcfm_commission_options'
wp option delete 'ac_lite_cart_abandoned_time'
wp option delete 'rzp_webhook_setup'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_razorpay_order_id%' OR option_name LIKE '_site_transient_razorpay_order_id%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_order_under_process_%' OR option_name LIKE '_site_transient_wc_order_under_process_%'"

# Clear Cron Jobs
wp cron event delete 'rzp_webhook_exec_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_min_matching_product_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_min_matching_product_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_min_matching_product_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_min_matching_product_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_max_matching_product_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_max_matching_product_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_max_matching_product_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_max_matching_product_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_min_matching_product_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_min_matching_product_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_min_matching_product_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_min_matching_product_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_max_matching_product_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_max_matching_product_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_max_matching_product_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_max_matching_product_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_magic_checkout_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_magic_checkout_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_magic_checkout_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_magic_checkout_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abandoned_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abandoned_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abandoned_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abandoned_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '1cc_shippinginfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '1cc_shippinginfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '1cc_shippinginfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '1cc_shippinginfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rzp_transfer_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rzp_transfer_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rzp_transfer_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rzp_transfer_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LA_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LA_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LA_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LA_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LA_transfer_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LA_transfer_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LA_transfer_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LA_transfer_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LA_transfer_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LA_transfer_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LA_transfer_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LA_transfer_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FromEmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FromEmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FromEmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FromEmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_sc_payment_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_sc_payment_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_sc_payment_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_sc_payment_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_partial_pay_through_wallet_compleate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_partial_pay_through_wallet_compleate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_partial_pay_through_wallet_compleate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_partial_pay_through_wallet_compleate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abandoned_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abandoned_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abandoned_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abandoned_id'"

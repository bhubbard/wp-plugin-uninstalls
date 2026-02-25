#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wsfw_enable'
wp option delete 'wsfw_enable_wallet_negative_balance'
wp option delete 'wps_wsfw_multiselect_wallet_recharge_restrict'
wp option delete 'wsfw_wallet_recharge_order_status_checkout'
wp option delete 'wps_wsfw_wallet_order_auto_process'
wp option delete 'wps_wsfw_enable_email_address_value_for_wallet_amount'
wp option delete 'wsfw_wallet_partial_payment_method_options'
wp option delete 'wsfwp_withdrawal_page_message'
wp option delete 'wsfwp_withdrawal_admin_withdrawal_request_email'
wp option delete 'wps_wsfwp_wallet_action_payment_gateway_charge'
wp option delete 'wps_wsfwp_payment_gateway_charge_fee_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_wsfwp_payment_gateway_charge_type_%'"
wp option delete 'wps_wsfw_wallet_action_daily_enable'
wp option delete 'wps_wsfw_wallet_action_daily_amount'
wp option delete 'wps_wsfw_wallet_action_registration_enable'
wp option delete 'wps_wsfw_wallet_action_registration_amount'
wp option delete 'wps_wsfw_wallet_action_registration_description'
wp option delete 'wps_wsfw_wallet_action_auto_topup_enable'
wp option delete 'wps_wsfw_subscriptions_per_interval'
wp option delete 'wps_wsfw_subscriptions_expiry_interval'
wp option delete 'wps_wsfw_wallet_action_comment_enable'
wp option delete 'wps_wsfw_wallet_action_comment_amount'
wp option delete 'wps_wsfw_wallet_action_restrict_comment'
wp option delete 'wps_wsfw_wallet_action_comment_description'
wp option delete 'wps_wsfw_multiselect_category_rule'
wp option delete 'wps_wsfw_enable_cashback'
wp option delete 'wps_wsfw_multiselect_category'
wp option delete 'wps_wsfw_cashback_rule'
wp option delete 'wps_wsfw_cashback_type'
wp option delete 'wps_wsfw_cashback_amount'
wp option delete 'wps_wsfw_cart_amount_min'
wp option delete 'wps_wsfw_cashback_amount_max'
wp option delete 'wps_wsfw_multiselect_cashback_restrict'
wp option delete 'wps_wsfw_enable_user_role_wise_cashback'
wp option delete 'wps_wsfw_user_role_cashback_restrict'
wp option delete 'wps_wsfw_cashback_wallet_recharge'
wp option delete 'wps_wsfw_Gateway_Restriction_message_checkout'
wp option delete 'wps_wsfw_hide_cashback_cart'
wp option delete 'wps_wsfw_hide_cashback_checkout'
wp option delete 'wps_sfw_subscription_interval'
wp option delete 'wps_sfw_subscription_expiry_interval'
wp option delete 'wps_wsfw_subscriptions_expiry_per_interval'
wp option delete 'wsfw_enable_tracking'
wp option delete 'woocommerce_wps_wcb_wallet_payment_gateway_settings'
wp option delete 'wps_wsfw_rechargeable_product_id'
wp option delete 'wps_wsfw_enable_email_notification_for_wallet_update'
wp option delete 'wps_wsfwp_wallet_sms_notification_enable'
wp option delete 'wps_wsfwp_wallet_sms_notification_auth_token'
wp option delete 'wps_wsfwp_wallet_sms_notification_account_sid'
wp option delete 'wps_wsfwp_wallet_sms_notification_phone_number'
wp option delete 'wallet_withdraw_methods'
wp option delete 'wallet_minimum_withdrawn_amount'
wp option delete 'wps_wsfwp_wallet_withdrawal_paypal_enable'
wp option delete 'wps_wsfw_updated_transaction_table'
wp option delete 'wps_sfw_enable_wallet_on_renewal_order'
wp option delete 'wps_sfw_amount_type_wallet_for_renewal_order'
wp option delete 'wps_sfw_amount_deduct_from_wallet_during_renewal_order'
wp option delete 'wps_wsfwp_wallet_action_withdrawal_enable'
wp option delete 'wps_wsfwp_cashback_withdrawal_fee_type'
wp option delete 'wps_wsfwp_wallet_withdrawal_fee_amount'
wp option delete 'wps_wsfwp_wallet_action_transfer_enable'
wp option delete 'wps_wsfwp_cashback_transfer_fee_type'
wp option delete 'wps_wsfwp_wallet_transfer_fee_amount'
wp option delete 'wps_wsfw_wallet_action_refer_friend_enable'
wp option delete 'wps_wsfw_wallet_action_referal_amount'
wp option delete 'wps_wsfw_wallet_action_referral_description'
wp option delete 'wps_wsfw_wallet_action_refer_coupon_code_enable'
wp option delete 'wps_wsfw_wallet_action_referal_coupon_amount'
wp option delete 'wps_wsfw_wallet_action_referal_coupon_type'
wp option delete 'wps_wsfw_wallet_action_refer_multi_level_referral'
wp option delete 'wps_wsfw_wallet_action_multi_level_amount'
wp option delete 'wsfw_wallet_dashboard_template_css'
wp option delete 'wps_wsfw_notification_color'
wp option delete 'wsfw_wallet_instant_discount_wallet'
wp option delete 'wps_wsfwp_wallet_instant_discount_type'
wp option delete 'wps_wsfwp_instant_wallet_discount_value'
wp option delete 'wps_wsfw_wallet_instant_discount_description'
wp option delete 'wps_wsfwp_win_wheel_rule_type'
wp option delete 'wps_wsfwp_wallet_withdrawal_restriction_enable'
wp option delete 'wsfwp_min_wallet_withdrawal_amount'
wp option delete 'wsfwp_max_wallet_withdrawal_amount'
wp option delete 'wps_wsfwp_wallet_recharge_restriction_enable'
wp option delete 'wsfwp_min_wallet_recharge_amount'
wp option delete 'wsfwp_max_wallet_recharge_amount'
wp option delete 'wps_wsfwp_wallet_transfer_restriction_enable'
wp option delete 'wsfwp_min_wallet_transfer_amount'
wp option delete 'wsfwp_max_wallet_transfer_amount'
wp option delete 'wps_wallet_id_cron_completed'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wsfw_wallet_enable_low_balance_wallet'
wp option delete 'wps_wsfwp_low_balance_wallet_value'
wp option delete 'wsfw_enable_wallet_negative_balance_limit'
wp option delete 'wsfw_enable_wallet_negative_balance_limit_order'
wp option delete 'wsfw_enable_wallet_negative_balance_enabled_interest'
wp option delete 'wps_wsfw_intrest_text_name_amount_negative_balance'
wp option delete 'wps_wsfw_intrest_type_amount_negative_balance'
wp option delete 'wps_wsfw_intrest_amount_negative_balance'
wp option delete 'wsfw_enable_wallet_kyc'
wp option delete 'wsfw_restrict_wallet_withdrawal_kyc'
wp option delete 'wsfw_restrict_wallet_transfer_kyc'
wp option delete 'wsfw_restrict_wallet_fund_request_kyc'
wp option delete 'wsfw_number_of_documents_for_kyc'
wp option delete 'wps_wsfw_wallet_action_kyc_description'
wp option delete 'wsfw_wallet_amount_for_users'
wp option delete 'wsfw_wallet_action_for_users'
wp option delete 'wallet_promotions_data_title'
wp option delete 'wallet_promotions_data_content'
wp option delete 'wps_wallet_action_recharge_tab_array'
wp option delete 'wps_wsfw_wallet_rest_api_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wps_wsfw_comment_done'"
wp option delete 'wpswings_tracker_last_send'
wp option delete 'wsfw_wallet_payment_refund_order_payment'
wp option delete 'wps_wsfw_onboarding_data_skipped'
wp option delete 'wps_wsfw_onboarding_data_sent'
wp option delete 'woocommerce_wallet_gateway_settings'
wp option delete 'wcmp_payment_settings_name'
wp option delete 'active_sitewide_plugins'
wp option delete 'wsfw_wallet_payment_order_status_checkout'
wp option delete 'wsfw_wallet_script_for_account_enabled'
wp option delete 'wsfw_wallet_partial_payment_method_enabled'
wp option delete 'wps_wsfwp_wallet_user_currency_setting'
wp option delete 'wsfw_wallet_payment_checkout_field_checkout'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wsfw_check_thanks_page'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wsfw_enable_wallet_recharge_tax_free'
wp option delete 'wsfw_enable_wallet_recharge'
wp option delete 'wps_wsfwp_wallet_promotion_tab_enable'
wp option delete 'wps_wsfwp_wallet_promotion_tab_limited_offer_enable'
wp option delete 'wps_wallet_recharge_tab_cashback_type'
wp option delete 'wps_wsfwp_wallet_recharge_tab_enable'
wp option delete 'wps_wsfwp_wallet_withdrawal_paypal_dropdown'
wp option delete 'wps_all_plugins_active'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_wsfw_wallet_site_visit_%' OR option_name LIKE '_site_transient_wps_wsfw_wallet_site_visit_%'"

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'
wp cron event delete 'wps_wsfw_assign_wallet_ids_event'
wp cron event delete 'wps_wsfw_daily_wallet_thresold'
wp cron event delete 'wpswings_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_cashback_bal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_cashback_bal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_cashback_bal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_cashback_bal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_withdrawal_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_withdrawal_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_withdrawal_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_withdrawal_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_wallet_partial_payment_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_wallet_partial_payment_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_wallet_partial_payment_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_wallet_partial_payment_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_order_recharge_executed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_order_recharge_executed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_order_recharge_executed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_order_recharge_executed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_converted_currency_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_converted_currency_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_converted_currency_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_converted_currency_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wsfw_customer_sms_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wsfw_customer_sms_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wsfw_customer_sms_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wsfw_customer_sms_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_restriction_for_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_restriction_for_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_restriction_for_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_restriction_for_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_withdrawal_paypal_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_withdrawal_paypal_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_withdrawal_paypal_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_withdrawal_paypal_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_withdrawal_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_withdrawal_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_withdrawal_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_withdrawal_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wsfwp_wallet_withdrawal_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wsfwp_wallet_withdrawal_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wsfwp_wallet_withdrawal_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wsfwp_wallet_withdrawal_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_further_withdrawal_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_further_withdrawal_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_further_withdrawal_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_further_withdrawal_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_partial_payment_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_partial_payment_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_partial_payment_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_partial_payment_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_recharge_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_recharge_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_recharge_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_recharge_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_kyc_documents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_kyc_documents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_kyc_documents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_kyc_documents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'key_verification_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'key_verification_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'key_verification_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'key_verification_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kyc_admin_remark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kyc_admin_remark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kyc_admin_remark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kyc_admin_remark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wsfw_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wsfw_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wsfw_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wsfw_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wsfw_order_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wsfw_order_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wsfw_order_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wsfw_order_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cash_back_provided'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cash_back_provided'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cash_back_provided'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cash_back_provided'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount6'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount6'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount6'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount6'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cash_back_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cash_back_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cash_back_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cash_back_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount8'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount8'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount8'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount8'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cash_back_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cash_back_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cash_back_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cash_back_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_wsfwp_cashback_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_wsfwp_cashback_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_wsfwp_cashback_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_wsfwp_cashback_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_wsfwp_category_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_wsfwp_category_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_wsfwp_category_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_wsfwp_category_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_status_through_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_status_through_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_status_through_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_status_through_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_block_initiated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_block_initiated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_block_initiated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_block_initiated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_cashback_receive_amount3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_cashback_receive_amount3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_cashback_receive_amount3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_cashback_receive_amount3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_legacy_fee_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_legacy_fee_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_legacy_fee_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_legacy_fee_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsfw_enable_wallet_negative_balance_limit_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsfw_enable_wallet_negative_balance_limit_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsfw_enable_wallet_negative_balance_limit_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsfw_enable_wallet_negative_balance_limit_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_restrict_wallet_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_restrict_wallet_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_restrict_wallet_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_restrict_wallet_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_last_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_last_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_last_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_last_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_order_geolocation_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_order_geolocation_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_order_geolocation_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_order_geolocation_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wsfwp_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wsfwp_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wsfwp_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wsfwp_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_recharge_as_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_recharge_as_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_recharge_as_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_recharge_as_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_sfw_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_sfw_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_sfw_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_sfw_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_expiry_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_expiry_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_expiry_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_expiry_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_expiry_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_expiry_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_expiry_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_expiry_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_update_on_thankyou'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_update_on_thankyou'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_update_on_thankyou'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_update_on_thankyou'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'global_cashback_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'global_cashback_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'global_cashback_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'global_cashback_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refere_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refere_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refere_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refere_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'requested_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'requested_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'requested_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'requested_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_restrict_wallet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_restrict_wallet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_restrict_wallet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_restrict_wallet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_fund_request_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_fund_request_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_fund_request_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_fund_request_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet_fund_request_another_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet_fund_request_another_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet_fund_request_another_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet_fund_request_another_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_current_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_current_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_current_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_current_user_email'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awc_paypal_rt_enabled_accounts'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'awc_paypal_invalid_profile_id'
wp option delete 'awc_fatal_error_handling_ipn_ignored'
wp option delete 'awc_paypal_credentials_error'
wp option delete 'awc_fatal_error_handling_ipn'
wp option delete 'awc_paypal_credentials_error_affected_profiles'
wp option delete 'woocommerce_anonymize_ended_subscriptions'
wp option delete 'woocommerce_erasure_request_removes_subscription_data'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'tests'
wp option delete 'acotrs_activation_license_key'
wp option delete 'acotrs_activation_license_status'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_drip_downloadable_content_on_renewal'"
wp option delete 'woocommerce_myaccount_subscriptions_endpoint'
wp option delete 'woocommerce_myaccount_subscription_payment_method_endpoint'
wp option delete 'woocommerce_myaccount_view_subscriptions_endpoint'
wp option delete 'woocommerce_myaccount_view_subscription_endpoint'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'awc_settings'
wp option delete 'awc_ignore_duplicate_siteurl_notice'
wp option delete 'woocommerce_calc_shipping'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_switch_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_sign_up_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching'"
wp option delete 'woocommerce_tax_display_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp option delete 'wc_subscriptions_siteurl'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_previous_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_paypal_debugging_default_set'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_recurring_price'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_to_cart_button_text'"
wp option delete 'woocommerce_tax_total_display'
wp option delete 'awc_is_large_site'
wp option delete 'woocommerce_awc_paypal_payment_settings'
wp option delete 'wc_gateway_ppce_display_decimal_msg'
wp option delete 'woocommerce_simplify_commerce_settings'
wp option delete 'wc_ppec_display_wc_3_0_warning'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woo_pp_admin_error'
wp option delete 'pp_woo_enabled'
wp option delete 'pp_woo_logoImageUrl'
wp option delete 'pp_woo_paymentAction'
wp option delete 'pp_woo_subtotalMismatchBehavior'
wp option delete 'pp_woo_environment'
wp option delete 'pp_woo_button_size'
wp option delete 'pp_woo_blockEChecks'
wp option delete 'pp_woo_requireBillingAddress'
wp option delete 'pp_woo_logging_enabled'
wp option delete 'pp_woo_liveApiCredentials'
wp option delete 'pp_woo_sandboxApiCredentials'
wp option delete 'awc_paypal_payment_gateway_version'
wp option delete 'wc_gateway_ppec_bootstrap_warning_message_dismissed'
wp option delete 'wc_gateway_ppec_prompt_to_connect_message_dismissed'

# Delete Transients
wp transient delete 'awc_paypal_ipn_error_occurred'
wp transient delete '_awc_admin_notices'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'ppec-upgrade-notice-dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awc_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awc_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awc_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awc_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_switched_subscription_first_payment_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_switched_subscription_first_payment_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_switched_subscription_first_payment_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_switched_subscription_first_payment_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cancelled_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cancelled_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cancelled_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cancelled_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rule_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rule_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rule_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rule_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_renewal_early'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_renewal_early'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_renewal_early'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_renewal_early'"

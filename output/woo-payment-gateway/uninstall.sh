#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_braintree_merchant_record'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_braintree_authenticated_routes'
wp option delete 'wc_braintree_kount_api_key'
wp option delete 'wc_braintree_sandbox_plans'
wp option delete 'wc_braintree_production_plans'
wp option delete 'braintree_wc_version'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'braintree_payment_settings'
wp option delete 'woocommerce_braintree_api_settings'
wp option delete 'woocommerce_braintree_cc_settings'
wp option delete 'woocommerce_braintree_paypal_settings'
wp option delete 'woocommerce_braintree_googlepay_settings'
wp option delete 'woocommerce_braintree_applepay_settings'
wp option delete 'bfwc_kount_key'
wp option delete 'woocommerce_braintree_subscription_settings'
wp option delete 'braintree_wc_production_plans'
wp option delete 'braintree_wc_sandbox_plans'
wp option delete 'wc_braintree_show_3_0_notice'
wp option delete 'bfwc_show_deprecated_donations'
wp option delete 'bfwc_error_messages'
wp option delete 'bfwc_default_settings'
wp option delete 'bfwc_admin_notices'
wp option delete 'braintree_gateway_log_current_post'
wp option delete 'braintree_for_woocommerce_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_braintree_lock_order_%' OR option_name LIKE '_site_transient_braintree_lock_order_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_renewal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sandbox_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sandbox_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sandbox_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sandbox_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_production_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_production_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_production_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_production_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_braintree_sandbox_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_braintree_sandbox_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_braintree_sandbox_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_braintree_sandbox_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_braintree_production_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_braintree_production_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_braintree_production_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_braintree_production_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_braintree_token_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_braintree_token_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_braintree_token_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_braintree_token_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"

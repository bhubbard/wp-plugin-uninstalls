#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_peach-payments_settings'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'cleantalk_settings'
wp option delete 'woocommerce_myaccount_page_id'

# Clear Cron Jobs
wp cron event delete 'pmpro_cron_peach_subscription_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_peach_customerid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_peach_customerid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_peach_customerid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_peach_customerid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_peach_subscription_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_peach_subscription_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_peach_subscription_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_peach_subscription_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_peach_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_peach_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_peach_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_peach_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my-cards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my-cards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my-cards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my-cards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_auth_bearer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_auth_bearer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_auth_bearer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_auth_bearer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peach_api_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peach_api_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peach_api_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peach_api_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_checkout_payment_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_checkout_payment_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_checkout_payment_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_checkout_payment_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_initial_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_initial_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_initial_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_initial_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_registration_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_registration_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_registration_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_registration_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_peach'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_peach'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_peach'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_peach'"

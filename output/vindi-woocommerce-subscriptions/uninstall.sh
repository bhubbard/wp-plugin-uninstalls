#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_subscriptions_turn_off_automatic_payments'
wp option delete 'woocommerce_subscriptions_accept_manual_renewals'
wp option delete 'woocommerce_subscriptions_allow_switching'

# Delete Transients
wp transient delete 'vindi_payment_methods'
wp transient delete 'vindi_merchant'
wp transient delete 'vindi_plans'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_wc_invoice_download_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_wc_invoice_download_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_wc_invoice_download_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_wc_invoice_download_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_user_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_user_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_user_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_user_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_variable_subscription_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_variable_subscription_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_variable_subscription_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_variable_subscription_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_subscription_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_subscription_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_subscription_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_subscription_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_wc_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_wc_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_wc_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_wc_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_wc_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_wc_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_wc_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_wc_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_wc_bill_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_wc_bill_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_wc_bill_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_wc_bill_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"

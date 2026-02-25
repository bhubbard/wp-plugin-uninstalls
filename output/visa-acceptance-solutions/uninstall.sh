#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_subscriptions_sync_payments'
wp option delete 'woocommerce_subscriptions_prorate_synced_payments'
wp option delete 'woocommerce_subscriptions_enable_early_renewal_via_modal'
wp option delete 'woocommerce_subscriptions_zero_initial_payment_requires_payment'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_payment_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_payment_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_payment_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_payment_sync_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_cybersource_customer_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_flex_cvv_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_flex_cvv_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_flex_cvv_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_flex_cvv_token'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's2ws_settings'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_paypal_settings'
wp option delete '_stripe_last_transation_id'
wp option delete 's2_subscription_queue_flush_rewrite_rules'
wp option delete 'woocommerce_enable_order_comments'

# Clear Cron Jobs
wp cron event delete 's2_check_subscription_expired'
wp cron event delete 's2_check_subscription_trial_period'
wp cron event delete 's2_check_subscription_payment'
wp cron event delete 's2_check_stripe_subscription'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expired_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expired_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expired_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expired_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_split_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_split_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_split_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_split_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_billing_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_billing_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_billing_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_billing_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_max_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_max_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_max_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_max_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_transaction_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_transaction_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_transaction_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_transaction_ids'"

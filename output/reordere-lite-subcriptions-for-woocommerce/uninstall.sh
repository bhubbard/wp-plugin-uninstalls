#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_plan_view'
wp option delete 'one_time_purchase_title'
wp option delete 'subscription_button_text'
wp option delete 'rorder_license'
wp option delete 'rorder_email'
wp option delete 'rorder_license_key'
wp option delete 'subscription_products'
wp option delete 'rorder_one_time_purchase_title'
wp option delete 'rorder_subscription_product_title'
wp option delete 'rorder_subscribe_button_text'
wp option delete 'rorder_selected_plan_view'
wp option delete 'rorder_subscription_retry_count'
wp option delete 'rorder_subscription_retry_interval'
wp option delete 'rorder_subscription_retry_interval_unit'
wp option delete 'reordere_subscriptions_meta_version'
wp option delete 'woocommerce_razorpay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reordere_razorpay_plan_%'"
wp option delete 'woocommerce-ppcp-settings'
wp option delete 'woocommerce_stripe_settings'

# Clear Cron Jobs
wp cron event delete 'reordere_retry_razorpay_subscription'
wp cron event delete 'rorder_reactivate_paused_subscriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_main_subscription_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_main_subscription_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_main_subscription_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_main_subscription_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_product_row'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_product_row'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_product_row'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_product_row'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_razorpay_payment_method_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_razorpay_payment_method_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_razorpay_payment_method_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_razorpay_payment_method_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppcp_target_customer_id'"

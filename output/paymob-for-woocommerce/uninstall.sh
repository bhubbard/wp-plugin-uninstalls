#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_paymob-main_settings'
wp option delete 'woocommerce_paymob-pixel_settings'
wp option delete 'woocommerce_valu_widget_settings'
wp option delete 'paymob_gateway_order'
wp option delete 'woocommerce_paymob_settings'
wp option delete 'woocommerce_paymob_gateway_data'
wp option delete 'woocommerce_paymob-subscription_settings'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_paymob_country'
wp option delete 'woocommerce_paymob_gateway_data_failure'
wp option delete 'cards_integration_id'
wp option delete 'apple_pay_integration_id'
wp option delete 'google_pay_integration_id'
wp option delete 'show_save_card'
wp option delete 'title'
wp option delete 'active_sitewide_plugins'
wp option delete 'paymob_activation_redirect'

# Delete Transients
wp transient delete 'paymob_auth_token'
wp transient delete 'paymob_flash_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webhook_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webhook_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webhook_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webhook_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paymob_plan_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paymob_plan_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paymob_plan_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paymob_plan_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paymob_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paymob_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paymob_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paymob_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paymob_saved_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paymob_saved_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paymob_saved_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paymob_saved_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paymob_saved_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paymob_saved_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paymob_saved_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paymob_saved_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymobMerchantOrderID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymobMerchantOrderID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymobMerchantOrderID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymobMerchantOrderID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymobTransactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymobTransactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymobTransactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymobTransactionId'"

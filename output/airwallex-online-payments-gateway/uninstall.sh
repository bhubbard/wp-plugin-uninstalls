#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_total_display'
wp option delete 'airwallex_enable_sandbox'
wp option delete 'airwallex_payment_descriptor'
wp option delete 'airwallex_payment_page_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'airwallex_connection_clicked_%'"
wp option delete 'airwallex_connection_type'
wp option delete 'airwallex_submit_order_details'
wp option delete 'airwallex_temporary_order_status_after_decline'
wp option delete 'do_remote_logging'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'airwallex-online-payments-gatewayairwallex_afterpay_settings'
wp option delete 'airwallex-online-payments-gatewayairwallex_card_settings'
wp option delete 'airwallex-online-payments-gatewayairwallex_klarna_settings'
wp option delete 'airwallex-online-payments-gatewayairwallex_main_settings'
wp option delete 'airwallex-online-payments-gatewayairwallex_pos_settings'
wp option delete 'airwallex-online-payments-gatewayairwallex_wechat_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_phone_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pos_device'"
wp option delete 'airwallex_client_id'
wp option delete 'airwallex_api_key'
wp option delete 'airwallex_webhook_secret'
wp option delete 'airwallex_order_status_pending'
wp option delete 'airwallex_order_status_authorized'
wp option delete 'airwallex_cronjob_interval'
wp option delete 'airwallex_do_remote_logging'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'airwallex_%'"
wp option delete 'airwallex_connection_clicked_demo'
wp option delete 'airwallex_connection_clicked_prod'
wp option delete 'airwallex_payment_method_card_page_id'
wp option delete 'airwallex_payment_method_wechat_page_id'
wp option delete 'airwallex_payment_method_all_page_id'
wp option delete 'airwallex_api_key_demo'
wp option delete 'airwallex_client_id_demo'
wp option delete 'airwallex_webhook_secret_demo'
wp option delete 'airwallex_account_id_demo'
wp option delete 'airwallex_account_id'
wp option delete 'airwallex_account_name_demo'
wp option delete 'airwallex_account_name'
wp option delete 'woocommerce_currency_pos'
wp option delete 'airwallex_merchant_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_type'"

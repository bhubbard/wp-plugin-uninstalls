#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_gestpay_shop_login'
wp option delete 'wc_gestpay_account_type'
wp option delete 'wc_gestpay_api_key'
wp option delete 'wc_gestpay_test_url'
wp option delete 'wc_gestpay_force_recrypt'
wp option delete 'wc_gestpay_force_check_gateway_response'
wp option delete 'wc_gestpay_debug'
wp option delete 'wc_gateway_gestpay_moto_sep'
wp option delete 'wc_gateway_gestpay_order_status'
wp option delete 'wc_gestpay_param_tokenization_send_cvv'
wp option delete 'wc_gestpay_param_tokenization_save_token'
wp option delete 'wc_gestpay_token_auth'
wp option delete 'wc_gestpay_param_buyer_email'
wp option delete 'wc_gestpay_param_buyer_name'
wp option delete 'wc_gestpay_param_language'
wp option delete 'wc_gestpay_param_payment_types'
wp option delete 'wc_gestpay_param_seller_protection'
wp option delete 'wc_gestpay_param_custominfo'
wp option delete 'wc_gestpay_shop_login_recurring'
wp option delete 'wc_gestpay_api_key_recurring'
wp option delete 'wc_gestpay_force_crypt_http'
wp option delete 'woocommerce_wc_gateway_gestpay_bancomatpay_settings'
wp option delete 'wc_gestpaypro_bancomatpay'
wp option delete 'woocommerce_wc_gateway_gestpay_settings'
wp option delete 'woocommerce_wc_gateway_gestpay_consel_settings'
wp option delete 'wc_gestpaypro_consel'
wp option delete 'gestpay_wc_gateway_gestpay_flush_rewrite_rules_flag'
wp option delete 'woocommerce_wc_gateway_gestpay_mybank_settings'
wp option delete 'wc_gestpaypro_mybank'
wp option delete 'woocommerce_wc_gateway_gestpay_paypal_settings'
wp option delete 'wc_gestpaypro_paypal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_gestpaypro_%'"
wp option delete 'woocommerce_currency'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gestpay_mybank_list_%' OR option_name LIKE '_site_transient_gestpay_mybank_list_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_gestpay_cc_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_gestpay_cc_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_gestpay_cc_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_gestpay_cc_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_gesp3ds2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_gesp3ds2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_gesp3ds2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gesp3ds2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number_formatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number_formatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number_formatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number_formatted'"

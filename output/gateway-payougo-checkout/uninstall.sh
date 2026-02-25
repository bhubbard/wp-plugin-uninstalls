#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wc_gateway_ppce_display_decimal_msg'
wp option delete 'woocommerce_simplify_commerce_settings'
wp option delete 'wc_pyg_display_wc_3_0_warning'
wp option delete 'woocommerce_product_type'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'pp_woo_enabled'
wp option delete 'woocommerce_pyg_payougo_settings'
wp option delete 'pp_woo_environment'
wp option delete 'pp_woo_blockEChecks'
wp option delete 'pp_woo_requireBillingAddress'
wp option delete 'pp_woo_logging_enabled'
wp option delete 'pp_woo_useraccount'
wp option delete 'pp_woo_passwordaccount'
wp option delete 'pp_woo_apikeypayougo'
wp option delete 'pp_woo_customerbuyer'
wp option delete 'pp_woo_merchantaccountpayougo'
wp option delete 'pp_woo_paymentsendemail'
wp option delete 'wc_pyg_version'
wp option delete 'wc_gateway_pyg_bootstrap_warning_message_dismissed'
wp option delete 'wc_gateway_pyg_prompt_to_connect_message_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payougo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payougo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payougo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payougo_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pyg_billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pyg_billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pyg_billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pyg_billing_agreement_id'"

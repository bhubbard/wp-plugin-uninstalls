#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ppec_paypal_settings'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wc_gateway_ppce_display_decimal_msg'
wp option delete 'woocommerce_simplify_commerce_settings'
wp option delete 'wc_ppec_display_wc_3_0_warning'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woo_pp_admin_error'
wp option delete 'pp_woo_enabled'
wp option delete 'pp_woo_logoImageUrl'
wp option delete 'pp_woo_paymentAction'
wp option delete 'pp_woo_subtotalMismatchBehavior'
wp option delete 'pp_woo_environment'
wp option delete 'pp_woo_button_size'
wp option delete 'pp_woo_blockEChecks'
wp option delete 'pp_woo_requireBillingAddress'
wp option delete 'pp_woo_logging_enabled'
wp option delete 'pp_woo_liveApiCredentials'
wp option delete 'pp_woo_sandboxApiCredentials'
wp option delete 'wc_ppec_version'
wp option delete 'wc_gateway_ppec_bootstrap_warning_message_dismissed'
wp option delete 'wc_gateway_ppec_prompt_to_connect_message_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_pp_txnData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppec_billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppec_billing_agreement_id'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'lknRedeForWoocommerceProEndpointStatus'
wp option delete 'lknRedeForWoocommerceProLicense'
wp option delete 'lkn_rede_oauth_token_test'
wp option delete 'lkn_rede_oauth_token_production'
wp option delete 'woocommerce_currency'
wp option delete 'LknIntegrationRedeForWoocommerceMaxipagoDebitEndpointStatus'
wp option delete 'woocommerce_maxipago_debit_settings'
wp option delete 'woocommerce_integration_rede_pix_settings'
wp option delete 'woocommerce_rede_pix_settings'
wp option delete 'woocommerce_rede_debit_settings'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_maxipago_credit_settings'
wp option delete 'wc_rede_version'
wp option delete 'woocommerce_rede_settings'
wp option delete 'woocommerce_rede_credit_settings'
wp option delete 'lknIntegrationRedeForWoocommerceSoftDescriptorErrorCredit'
wp option delete 'lknIntegrationRedeForWoocommerceSoftDescriptorErrorDebit'
wp option delete 'woocommerce_rede_credit'
wp option delete 'wcbcf_settings'

# Clear Cron Jobs
wp cron event delete 'update_rede_orders'
wp cron event delete 'lkn_verify_pix_payment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lknMaxipagoProdutctInterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lknMaxipagoProdutctInterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lknMaxipagoProdutctInterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lknMaxipagoProdutctInterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lknRedeProdutctInterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lknRedeProdutctInterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lknRedeProdutctInterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lknRedeProdutctInterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_maxipago_transaction_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_maxipago_transaction_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_maxipago_transaction_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_maxipago_transaction_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_maxipago_transaction_cancel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_maxipago_transaction_cancel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_maxipago_transaction_cancel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_maxipago_transaction_cancel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_maxipago_transaction_canceled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_maxipago_transaction_canceled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_maxipago_transaction_canceled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_maxipago_transaction_canceled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rede_transaction_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rede_transaction_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rede_transaction_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rede_transaction_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rede_transaction_cancel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rede_transaction_cancel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rede_transaction_cancel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rede_transaction_cancel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rede_transaction_canceled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rede_transaction_canceled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rede_transaction_canceled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rede_transaction_canceled'"

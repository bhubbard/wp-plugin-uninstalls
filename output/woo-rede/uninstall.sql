-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lknRedeForWoocommerceProEndpointStatus', 'lknRedeForWoocommerceProLicense', 'lkn_rede_oauth_token_test', 'lkn_rede_oauth_token_production', 'woocommerce_currency', 'LknIntegrationRedeForWoocommerceMaxipagoDebitEndpointStatus', 'woocommerce_maxipago_debit_settings', 'woocommerce_integration_rede_pix_settings', 'woocommerce_rede_pix_settings', 'woocommerce_rede_debit_settings', 'woocommerce_price_num_decimals', 'woocommerce_default_country', 'woocommerce_maxipago_credit_settings', 'wc_rede_version', 'woocommerce_rede_settings', 'woocommerce_rede_credit_settings', 'lknIntegrationRedeForWoocommerceSoftDescriptorErrorCredit', 'lknIntegrationRedeForWoocommerceSoftDescriptorErrorDebit', 'woocommerce_rede_credit', 'wcbcf_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lknMaxipagoProdutctInterest', 'lknRedeProdutctInterest', '_wc_maxipago_transaction_refund_id', '_wc_maxipago_transaction_cancel_id', '_wc_maxipago_transaction_canceled', '_wc_rede_transaction_refund_id', '_wc_rede_transaction_cancel_id', '_wc_rede_transaction_canceled');
DELETE FROM wp_usermeta WHERE meta_key IN ('lknMaxipagoProdutctInterest', 'lknRedeProdutctInterest', '_wc_maxipago_transaction_refund_id', '_wc_maxipago_transaction_cancel_id', '_wc_maxipago_transaction_canceled', '_wc_rede_transaction_refund_id', '_wc_rede_transaction_cancel_id', '_wc_rede_transaction_canceled');
DELETE FROM wp_termmeta WHERE meta_key IN ('lknMaxipagoProdutctInterest', 'lknRedeProdutctInterest', '_wc_maxipago_transaction_refund_id', '_wc_maxipago_transaction_cancel_id', '_wc_maxipago_transaction_canceled', '_wc_rede_transaction_refund_id', '_wc_rede_transaction_cancel_id', '_wc_rede_transaction_canceled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lknMaxipagoProdutctInterest', 'lknRedeProdutctInterest', '_wc_maxipago_transaction_refund_id', '_wc_maxipago_transaction_cancel_id', '_wc_maxipago_transaction_canceled', '_wc_rede_transaction_refund_id', '_wc_rede_transaction_cancel_id', '_wc_rede_transaction_canceled');


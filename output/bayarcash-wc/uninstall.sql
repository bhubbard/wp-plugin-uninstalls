-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bayarcash_settings', 'woocommerce_bayarcash-wc_settings', 'bayarcash_enable_multi_merchant', 'bayarcash_enable_fpx_gateways', 'bayarcash_additional_fpx', 'bayarcash_enable_duitnow_gateways', 'bayarcash_additional_duitnow', 'woocommerce_directdebit-wc_settings', 'woocommerce_duitnowboost-wc_settings', 'woocommerce_duitnow-wc_settings', 'woocommerce_duitnownets-wc_settings', 'woocommerce_duitnowqr-wc_settings', 'woocommerce_duitnowqris-wc_settings', 'woocommerce_duitnowqriswallet-wc_settings', 'woocommerce_duitnowshopee-wc_settings', 'woocommerce_linecredit-wc_settings', 'bayarcash_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bayarcash_wc_transaction_id', 'bc_payment_intent');
DELETE FROM wp_usermeta WHERE meta_key IN ('bayarcash_wc_transaction_id', 'bc_payment_intent');
DELETE FROM wp_termmeta WHERE meta_key IN ('bayarcash_wc_transaction_id', 'bc_payment_intent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bayarcash_wc_transaction_id', 'bc_payment_intent');


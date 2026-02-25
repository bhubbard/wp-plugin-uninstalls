-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'woocommerce_mycryptocheckout_settings', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mcc_payment_id', '_mcc_transaction_id', '_mcc_amount', '_mcc_currency_id', '_mcc_to', '_mcc_attempts', '_mcc_confirmations', '_mcc_created_at', '_mcc_payment_timeout_hours', '_mcc_payment_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mcc_payment_id', '_mcc_transaction_id', '_mcc_amount', '_mcc_currency_id', '_mcc_to', '_mcc_attempts', '_mcc_confirmations', '_mcc_created_at', '_mcc_payment_timeout_hours', '_mcc_payment_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mcc_payment_id', '_mcc_transaction_id', '_mcc_amount', '_mcc_currency_id', '_mcc_to', '_mcc_attempts', '_mcc_confirmations', '_mcc_created_at', '_mcc_payment_timeout_hours', '_mcc_payment_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mcc_payment_id', '_mcc_transaction_id', '_mcc_amount', '_mcc_currency_id', '_mcc_to', '_mcc_attempts', '_mcc_confirmations', '_mcc_created_at', '_mcc_payment_timeout_hours', '_mcc_payment_data');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payex_psp_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payex_customer_uuid', '_payment_tokens', '_payex_replace_token', '_payex_payment_id', '_payex_legal_address', '_payex_payment_state', '_payex_transaction_capture', '_transaction_id', '_payex_transaction_cancel', '_payex_transaction_refund');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payex_customer_uuid', '_payment_tokens', '_payex_replace_token', '_payex_payment_id', '_payex_legal_address', '_payex_payment_state', '_payex_transaction_capture', '_transaction_id', '_payex_transaction_cancel', '_payex_transaction_refund');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payex_customer_uuid', '_payment_tokens', '_payex_replace_token', '_payex_payment_id', '_payex_legal_address', '_payex_payment_state', '_payex_transaction_capture', '_transaction_id', '_payex_transaction_cancel', '_payex_transaction_refund');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payex_customer_uuid', '_payment_tokens', '_payex_replace_token', '_payex_payment_id', '_payex_legal_address', '_payex_payment_state', '_payex_transaction_capture', '_transaction_id', '_payex_transaction_cancel', '_payex_transaction_refund');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_viapay_gateway_settings', 'woocommerce_viapay_checkout_settings', 'viapay_test_api_key_request_date', 'viapay_account_creation_request_date', 'viabill_key', 'viabill_secret', 'viabill_pricetag', 'woocommerce_prices_include_tax', 'viapay_activation_redirect', 'woocommerce_viapay_version', 'woocommerce_viapay_viabill_settings', 'viapay_api_action_error', 'viapay_api_action_success', 'viapay_webhook_settings_secret');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_viapay_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE 'viapay_invoice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_viapay_maybe_save_card', '_viapay_capture_transaction', '_viapay_cancel_transaction', '_viapay_credit_note_ids', 'viapay_customer_id', '_viapay_locked', '_payment_tokens', '_viapay_token_id', '_viapay_token', '_viapay_source', '_transaction_id', '_viapay_order', '_viapay_state_authorized', '_viapay_state_settled', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_viapay_maybe_save_card', '_viapay_capture_transaction', '_viapay_cancel_transaction', '_viapay_credit_note_ids', 'viapay_customer_id', '_viapay_locked', '_payment_tokens', '_viapay_token_id', '_viapay_token', '_viapay_source', '_transaction_id', '_viapay_order', '_viapay_state_authorized', '_viapay_state_settled', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_viapay_maybe_save_card', '_viapay_capture_transaction', '_viapay_cancel_transaction', '_viapay_credit_note_ids', 'viapay_customer_id', '_viapay_locked', '_payment_tokens', '_viapay_token_id', '_viapay_token', '_viapay_source', '_transaction_id', '_viapay_order', '_viapay_state_authorized', '_viapay_state_settled', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_viapay_maybe_save_card', '_viapay_capture_transaction', '_viapay_cancel_transaction', '_viapay_credit_note_ids', 'viapay_customer_id', '_viapay_locked', '_payment_tokens', '_viapay_token_id', '_viapay_token', '_viapay_source', '_transaction_id', '_viapay_order', '_viapay_state_authorized', '_viapay_state_settled', 'billing_phone');


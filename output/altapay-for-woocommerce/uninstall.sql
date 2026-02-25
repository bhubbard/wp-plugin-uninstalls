-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('altapay_db_version', 'altapay_terminal_classes_recreated', 'altapay_terminals_enabled', 'altapay_terminals', 'woocommerce_currency', 'altapay_payment_page', 'altapay_username', 'altapay_cc_form_styling', 'altapay_callback_redirect_page', 'altapay_external_payment_page', 'altapay_gateway_url', 'altapay_password', 'altapay_fraud_detection', 'altapay_fraud_detection_action', 'altapay_payment_page_layout', 'woocommerce_default_country', '$creditCardDBVersion', 'terminals_directory_error', 'altapay_capture_failed', 'altapay_capture_warning', 'altapay_sync_terminals', 'altapay_login_error');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('item_id', 'qty_captured', '_save_credit_card', '_refunded', '_released', '_captured', '_transaction_id', '_cardno', '_credit_card_token', '_credit_card_brand', '_credit_card_expiry_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('item_id', 'qty_captured', '_save_credit_card', '_refunded', '_released', '_captured', '_transaction_id', '_cardno', '_credit_card_token', '_credit_card_brand', '_credit_card_expiry_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('item_id', 'qty_captured', '_save_credit_card', '_refunded', '_released', '_captured', '_transaction_id', '_cardno', '_credit_card_token', '_credit_card_brand', '_credit_card_expiry_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('item_id', 'qty_captured', '_save_credit_card', '_refunded', '_released', '_captured', '_transaction_id', '_cardno', '_credit_card_token', '_credit_card_brand', '_credit_card_expiry_date');


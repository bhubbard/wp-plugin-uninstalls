-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('withinweb_wwkc_keycodes_paypal_dolocaltest', 'withinweb_wwkc_keycodes_paypal_email', 'withinweb_wwkc_keycodes_sandbox_paypal_email', 'withinweb_wwkc_keycodes_cancel_url', 'withinweb_wwkc_keycodes_return_url', 'withinweb_wwkc_keycodes_ipn_url', 'withinweb_wwkc_keycodes_paypal_environment', 'withinweb_wwkc_keycodes_paypal_debug', 'enable_mailchimp', 'woocommerce_paypal_settings', 'ipn_forwarding_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paypal_ipn_forwarder_url_name', 'invoice', 'transaction_refund_id', 'payment_date', 'payment_request_date', 'subscr_date', 'first_name', 'last_name', 'payer_business_name', 'mc_gross', 'transaction_amount', 'mc_amount3', 'txn_type', 'transaction_type', 'payment_status', 'IPN_status', 'test_ipn', 'ipn data serialized');
DELETE FROM wp_usermeta WHERE meta_key IN ('paypal_ipn_forwarder_url_name', 'invoice', 'transaction_refund_id', 'payment_date', 'payment_request_date', 'subscr_date', 'first_name', 'last_name', 'payer_business_name', 'mc_gross', 'transaction_amount', 'mc_amount3', 'txn_type', 'transaction_type', 'payment_status', 'IPN_status', 'test_ipn', 'ipn data serialized');
DELETE FROM wp_termmeta WHERE meta_key IN ('paypal_ipn_forwarder_url_name', 'invoice', 'transaction_refund_id', 'payment_date', 'payment_request_date', 'subscr_date', 'first_name', 'last_name', 'payer_business_name', 'mc_gross', 'transaction_amount', 'mc_amount3', 'txn_type', 'transaction_type', 'payment_status', 'IPN_status', 'test_ipn', 'ipn data serialized');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paypal_ipn_forwarder_url_name', 'invoice', 'transaction_refund_id', 'payment_date', 'payment_request_date', 'subscr_date', 'first_name', 'last_name', 'payer_business_name', 'mc_gross', 'transaction_amount', 'mc_amount3', 'txn_type', 'transaction_type', 'payment_status', 'IPN_status', 'test_ipn', 'ipn data serialized');


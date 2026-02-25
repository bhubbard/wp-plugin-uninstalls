-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpp_sandbox_webhook_id', 'cpp_live_webhook_id', 'woocommerce_complete_paypal_payments_settings', 'cpp_is_webhook_process_started', 'ppc_wp_review_request');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_paypal_status', 'ppc_paypal_customer_id', 'ppc_wp_billing_phone_notice', 'ppc_wp_review_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_paypal_status', 'ppc_paypal_customer_id', 'ppc_wp_billing_phone_notice', 'ppc_wp_review_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_paypal_status', 'ppc_paypal_customer_id', 'ppc_wp_billing_phone_notice', 'ppc_wp_review_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_paypal_status', 'ppc_paypal_customer_id', 'ppc_wp_billing_phone_notice', 'ppc_wp_review_request');


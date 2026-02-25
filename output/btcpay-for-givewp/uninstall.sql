-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btcpay_api_validation_error', 'btcpay_api_validation_success', 'btcpay_webhook_exists', 'btcpay_webhook_created', 'btcpay_webhook_error');


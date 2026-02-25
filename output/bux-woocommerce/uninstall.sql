-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_manage_stock', 'bux_payment_client_secret', 'bux_payment_client_id', 'bux_payment_api_key', 'bux_payment_default_expiry', 'bux_redirect_disable', 'bux_test_mode');


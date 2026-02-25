-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cynder_paymongo_test_mode', 'woocommerce_cynder_paymongo_send_invoice_after_payment', 'woocommerce_cynder_paymongo_debug_mode', 'cynder_paymongo_version', 'woocommerce_paymongo_settings');


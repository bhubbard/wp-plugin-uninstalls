-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_payment_bypass_enabled', 'woocommerce_wpfi_woo_order_test_settings', 'wpfi_do_activation_redirect');


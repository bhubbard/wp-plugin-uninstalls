-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_icard_checkout_woocommerce_integration_settings', 'icard_checkout_woocommerce_integration_settings', 'icard_installing', 'icard_checkout_woocommerce_cancelled_order', 'icard_cancelled_order');
DELETE FROM wp_options WHERE option_name LIKE 'icard_checkout_woocommerce_payment_declined_%';


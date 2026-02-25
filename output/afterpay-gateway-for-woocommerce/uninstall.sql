-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_afterpay_settings', 'woocommerce_afterpay_api_error', 'woocommerce_currency', 'afterpay-admin-activation-notice');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omega_add_paypal_tracking', 'woocommerce_currency', 'woocommerce_api_enabled');


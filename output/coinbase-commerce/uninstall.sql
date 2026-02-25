-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coinbase_payment_methods', 'woocommerce_force_ssl_checkout');


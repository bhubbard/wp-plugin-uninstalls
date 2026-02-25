-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tuna_payment_operation_mode', 'tuna_payment_antifraud_config', 'tuna_payment_allow_cartao', 'tuna_operation_mode', 'woocommerce_force_ssl_checkout');


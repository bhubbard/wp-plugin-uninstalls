-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hyperpay_payments_logs', 'hyperpay_payments_available_gateways');


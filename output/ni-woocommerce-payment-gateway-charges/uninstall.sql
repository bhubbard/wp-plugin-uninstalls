-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount', 'ni-payment-gateway-charges-option', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


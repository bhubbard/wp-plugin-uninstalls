-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_antom_card_settings', 'woocommerce_hold_stock_minutes', 'woocommerce_antom_payments_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


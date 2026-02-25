-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_alternative_settings', 'woocommerce_manage_stock', 'woocommerce_alternative_payment_options');


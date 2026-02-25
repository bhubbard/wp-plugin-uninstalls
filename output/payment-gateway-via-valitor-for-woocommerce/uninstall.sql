-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_valitor_settings', 'woocommerce_tax_display_cart', 'woocommerce_hold_stock_minutes');
DELETE FROM wp_options WHERE option_name LIKE '%_processing';


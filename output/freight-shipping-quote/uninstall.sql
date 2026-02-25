-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freight_shipping_quote_settings', 'woocommerce_currency_pos', 'woocommerce_tax_total_display', 'woocommerce_tax_display_cart');


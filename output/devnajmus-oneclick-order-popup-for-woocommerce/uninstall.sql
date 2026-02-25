-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DOPW_button_text', 'DOPW_place_order_color', 'DOPW_total_color', 'DOPW_product_price_color', 'woocommerce_currency_pos');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qplc_quantity_price_limit_product_limits', 'qplc_quantity_price_limit_cart_limits');


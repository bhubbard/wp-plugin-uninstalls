-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppizza', 'wppizza_addingredients', 'wppizza_dbp', 'wppizza_pickup_prices', 'wppizza_preorder', 'wppizza_stockmanagement', 'wppizza_cad', 'wppizza_cad_coupons', 'wppizza_cad_discounts', 'wppizza_gateway_cod', 'wppizza_gateway_paypal');


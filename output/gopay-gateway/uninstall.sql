-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gopay_review_dismiss', 'woocommerce_price_num_decimals', 'pickup_location_pickup_locations', 'woocommerce_wc_gopay_gateway_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_multiple_purchase';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bread_auth_token', 'pickup_location_pickup_locations', 'woocommerce_store_phone');


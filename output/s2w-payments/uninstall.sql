-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_environment';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_lifetime';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_ssl_verification';
DELETE FROM wp_options WHERE option_name LIKE '%_create_customer';
DELETE FROM wp_options WHERE option_name LIKE '%_partial_item_match';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_guest_orders';
DELETE FROM wp_options WHERE option_name LIKE '%_payment_gateway';
DELETE FROM wp_options WHERE option_name LIKE '%_order_status';


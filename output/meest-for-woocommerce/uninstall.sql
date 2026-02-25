-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_destination');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin';
DELETE FROM wp_options WHERE option_name LIKE '%_api';


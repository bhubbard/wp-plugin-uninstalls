-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_customer_address');
DELETE FROM wp_options WHERE option_name LIKE 'geoip_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_pay_endpoint');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmpg_settings', 'woocommerce_force_ssl_checkout', 'checkout_temp_data');


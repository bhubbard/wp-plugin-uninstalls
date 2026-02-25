-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_monek-checkout_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


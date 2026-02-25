-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_muzapay_settings', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


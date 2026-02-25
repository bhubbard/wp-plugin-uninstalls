-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_tax_class', 'woocommerce_calc_taxes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


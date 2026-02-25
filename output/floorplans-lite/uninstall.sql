-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep');
DELETE FROM wp_options WHERE option_name LIKE '%-switch';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade';


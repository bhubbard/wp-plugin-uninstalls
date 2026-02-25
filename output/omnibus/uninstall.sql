-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'edd_settings', '_iwo_price_lowest_days', 'woocommerce_calc_taxes', 'tutor_option', 'woocommerce_enable_reviews');
DELETE FROM wp_options WHERE option_name LIKE 'learn_press_%';


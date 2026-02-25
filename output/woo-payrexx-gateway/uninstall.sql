-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payrexx_logos', 'woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE '%instance';
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%prefix';


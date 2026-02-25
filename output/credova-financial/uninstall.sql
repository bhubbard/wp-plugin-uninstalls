-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_credova_settings', 'credova_db_version', 'woocommerce_prices_include_tax');


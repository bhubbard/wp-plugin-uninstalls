-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('currencyr_db_version', 'currencyr_settings', 'woocommerce_currency', 'currency_type', 'edd_settings_general');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_updated';


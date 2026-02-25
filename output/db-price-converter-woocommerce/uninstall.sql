-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('db_woo_converter_currency_from', 'db_woo_converter_currency_to', 'db_woo_converter_date', 'db_woo_converter_date_cbr', 'db_woo_converter_rate_cbr', 'db_woo_converter_rate', 'db_woo_converter_if_cbr', 'db_woo_converter_margin', 'db_woo_converter_status', 'db_woo_converter_round');


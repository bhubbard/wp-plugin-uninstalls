-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emplmasy_activation_time', 'emplmasy_date_format', 'emplmasy_currency_symbol', 'emplmasy_currency_position', 'emplmasy_delete_data_uninstall');


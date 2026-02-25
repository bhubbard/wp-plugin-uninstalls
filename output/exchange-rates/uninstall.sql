-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exchange_rates_force_data_update_time');
DELETE FROM wp_options WHERE option_name LIKE '%_rates';


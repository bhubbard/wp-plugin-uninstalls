-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextubch_options_version', 'daextubch_database_version', 'daextubch_assets_mode', 'daextubch_chartjs_url', 'daextubch_chartjs_adapter_date_fns_url', 'daextubch_verify_single_shortcode', 'daextubch_max_execution_time', 'daextubch_max_execution_time_value');
DELETE FROM wp_options WHERE option_name LIKE '%_chartjs_url';
DELETE FROM wp_options WHERE option_name LIKE '%_chartjs_adapter_date_fns_url';
DELETE FROM wp_options WHERE option_name LIKE '%_assets_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_verify_single_shortcode';


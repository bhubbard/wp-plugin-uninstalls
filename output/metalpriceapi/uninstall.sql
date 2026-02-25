-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpa_api_key', 'mpa_data_success', 'mpa_data_none', 'mpa_data_error', 'mpa_data_carat_success');


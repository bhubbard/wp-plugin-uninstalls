-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erf_cfdb7_settings', 'erf_cfdb7_clear_data');


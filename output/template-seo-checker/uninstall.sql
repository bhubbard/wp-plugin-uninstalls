-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jja_tsc_summary_report');
DELETE FROM wp_options WHERE option_name LIKE 'tsc_coef_error_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'tsc_error_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'tsc_error_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'tsc_coef_%';


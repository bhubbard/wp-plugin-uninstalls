-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swal_cf7_title_success', 'swal_cf7_duration_success', 'swal_cf7_title_error', 'swal_cf7_duration_error');


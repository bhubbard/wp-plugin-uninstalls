-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('molsc_wp_presiandate', 'molsc_wc_datepicker', 'molsc_persian', 'molsc_install_time', 'molsc_gave_feedback');


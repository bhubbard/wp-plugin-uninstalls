-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lec_main_heading', 'lec_filecharge', 'lec_monthly_interest');


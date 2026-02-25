-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdm_dark_mode_dashboard', 'cdm_start_time', 'cdm_end_time');


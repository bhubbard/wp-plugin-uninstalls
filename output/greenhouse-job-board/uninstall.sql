-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('greenhouse_job_board_settings', 'ghjb_json', 'ghjb_jobs');


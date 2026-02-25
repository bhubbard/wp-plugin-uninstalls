-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awsm_jobs_adl_general_settings', 'awsm_jobs_adl_register_default_settings');


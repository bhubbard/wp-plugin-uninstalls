-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_job_cat_what_color');
DELETE FROM wp_options WHERE option_name LIKE '%_color';


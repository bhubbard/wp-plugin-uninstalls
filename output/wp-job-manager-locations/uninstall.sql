-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_enable_regions_filter', 'resume_manager_enable_regions_filter', 'job_manager_regions_filter', 'resume_manager_regions_filter');


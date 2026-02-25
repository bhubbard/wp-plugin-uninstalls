-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recruitology_company_data', 'recruitology_jobspage_postid', 'recruitology_custom_settings', 'recruitology_api_key');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jbye_options', 'jobboard_options', 'jobboard_jobs_per_page', 'jobboard_enable_applications', 'jobboard_notification_email', 'jobboard_currency', 'jobboard_plugin_activated', 'jobboard_requirement_errors', 'jbye_flush_rewrite_rules', 'jbye_plugin_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_job_company', '_job_location', '_job_salary_from', '_job_salary_to', '_job_currency', '_application_deadline', '_job_company_size', '_job_founded', '_job_website', '_job_salary_type', '_job_skills', '_company_name', '_job_salary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_job_company', '_job_location', '_job_salary_from', '_job_salary_to', '_job_currency', '_application_deadline', '_job_company_size', '_job_founded', '_job_website', '_job_salary_type', '_job_skills', '_company_name', '_job_salary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_job_company', '_job_location', '_job_salary_from', '_job_salary_to', '_job_currency', '_application_deadline', '_job_company_size', '_job_founded', '_job_website', '_job_salary_type', '_job_skills', '_company_name', '_job_salary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_job_company', '_job_location', '_job_salary_from', '_job_salary_to', '_job_currency', '_application_deadline', '_job_company_size', '_job_founded', '_job_website', '_job_salary_type', '_job_skills', '_company_name', '_job_salary');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


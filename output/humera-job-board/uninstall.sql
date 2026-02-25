-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('humera_job_form_settings', 'humera_smtp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_humera_job_views', '_humera_job_location', '_applicant_name', '_applicant_email', '_applicant_cv', '_job_applied_for', '_humera_application_data', '_humera_job_salary', '_humera_job_deadline', '_humera_job_application_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_humera_job_views', '_humera_job_location', '_applicant_name', '_applicant_email', '_applicant_cv', '_job_applied_for', '_humera_application_data', '_humera_job_salary', '_humera_job_deadline', '_humera_job_application_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_humera_job_views', '_humera_job_location', '_applicant_name', '_applicant_email', '_applicant_cv', '_job_applied_for', '_humera_application_data', '_humera_job_salary', '_humera_job_deadline', '_humera_job_application_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_humera_job_views', '_humera_job_location', '_applicant_name', '_applicant_email', '_applicant_cv', '_job_applied_for', '_humera_application_data', '_humera_job_salary', '_humera_job_deadline', '_humera_job_application_email');


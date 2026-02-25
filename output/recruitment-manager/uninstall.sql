-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwrm_job_fields', 'cwrm_css_field', 'cwrm_gen_opt_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cwrm_attachment_id', '_cwrm_applicant_email', '_cwrm_applicant_for', '_cwrm_job_fields', '_cwrm_job_min_salary', '_cwrm_job_max_salary', '_cwrm_job_last_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cwrm_attachment_id', '_cwrm_applicant_email', '_cwrm_applicant_for', '_cwrm_job_fields', '_cwrm_job_min_salary', '_cwrm_job_max_salary', '_cwrm_job_last_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cwrm_attachment_id', '_cwrm_applicant_email', '_cwrm_applicant_for', '_cwrm_job_fields', '_cwrm_job_min_salary', '_cwrm_job_max_salary', '_cwrm_job_last_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cwrm_attachment_id', '_cwrm_applicant_email', '_cwrm_applicant_for', '_cwrm_job_fields', '_cwrm_job_min_salary', '_cwrm_job_max_salary', '_cwrm_job_last_date');


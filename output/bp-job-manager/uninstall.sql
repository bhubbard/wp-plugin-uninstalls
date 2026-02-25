-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpjm_general_settings', 'bpjm_job_application_pgid', 'job_manager_per_page', 'job_manager_job_dashboard_page_id', 'resume_manager_enable_categories', 'resume_manager_submission_limit', 'resume_manager_submit_resume_form_page_id', 'resume_manager_candidate_dashboard_page_id', '_bpjm_is_new_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpjm_display_fields', 'bpjm_profile_resume_show_id', '_candidate_email', '_candidate_education', '_candidate_experience');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpjm_display_fields', 'bpjm_profile_resume_show_id', '_candidate_email', '_candidate_education', '_candidate_experience');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpjm_display_fields', 'bpjm_profile_resume_show_id', '_candidate_email', '_candidate_education', '_candidate_experience');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpjm_display_fields', 'bpjm_profile_resume_show_id', '_candidate_email', '_candidate_education', '_candidate_experience');


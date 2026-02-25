-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbb_username', 'wpbb_password', 'wpbb_plugin_credit', 'wpbb_hide_job_data_output', 'wpbb_job_application_type', 'wpbroadbean_version', 'wpbroadbean_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('job_post_id', '_wpbb_job_broadbean_application_email', '_wpbb_job_broadbean_application_url', 'candidate_name', 'candidate_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('job_post_id', '_wpbb_job_broadbean_application_email', '_wpbb_job_broadbean_application_url', 'candidate_name', 'candidate_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('job_post_id', '_wpbb_job_broadbean_application_email', '_wpbb_job_broadbean_application_url', 'candidate_name', 'candidate_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('job_post_id', '_wpbb_job_broadbean_application_email', '_wpbb_job_broadbean_application_url', 'candidate_name', 'candidate_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%salary_currency';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%salary_currency';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%salary_currency';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%salary_currency';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%application_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%application_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%application_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%application_url';


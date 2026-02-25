-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjobs_send_mail', 'wp_jobs_currency', 'wp_jobs_listing', 'wpjobs_wg_bg_color', 'wp_jobs_list_sidebar', 'wp_jobs_detail_sidebar', 'wpjobs_pg_pro_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_jobs_designation', 'wp_jobs_location', 'wp_jobs_salary', 'wp_jobs_type', 'wpjobseditorqualification', 'wp_jobs_frm', 'wp_jobs_application_email', 'wp_jobs_date_start', 'wp_jobs_date_close');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_jobs_designation', 'wp_jobs_location', 'wp_jobs_salary', 'wp_jobs_type', 'wpjobseditorqualification', 'wp_jobs_frm', 'wp_jobs_application_email', 'wp_jobs_date_start', 'wp_jobs_date_close');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_jobs_designation', 'wp_jobs_location', 'wp_jobs_salary', 'wp_jobs_type', 'wpjobseditorqualification', 'wp_jobs_frm', 'wp_jobs_application_email', 'wp_jobs_date_start', 'wp_jobs_date_close');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_jobs_designation', 'wp_jobs_location', 'wp_jobs_salary', 'wp_jobs_type', 'wpjobseditorqualification', 'wp_jobs_frm', 'wp_jobs_application_email', 'wp_jobs_date_start', 'wp_jobs_date_close');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_company_enable_company_category', 'job_manager_company_enable_company_strength', 'job_manager_company_enable_average_salary', 'job_manager_company_enable_company_revenue', 'job_manager_company_category_filter_type', 'job_manager_companies_per_page', 'job_manager_submit_company_form_page_id', 'job_manager_company_dashboard_page_id', 'job_manager_company_submission_limit', 'job_manager_user_can_edit_pending_company_submissions', 'job_manager_enable_recaptcha_company_submission', 'job_manager_registration_role', 'job_manager_company_submission_requires_approval', 'job_manager_job_submission_required_company', 'job_manager_manager_submit_company_form_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'mas_wpjmc_layered_nav_counts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_featured', '_company_name_prefix', '_public_submission', '_submitting_key', '_company_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_featured', '_company_name_prefix', '_public_submission', '_submitting_key', '_company_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_featured', '_company_name_prefix', '_public_submission', '_submitting_key', '_company_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_featured', '_company_name_prefix', '_public_submission', '_submitting_key', '_company_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


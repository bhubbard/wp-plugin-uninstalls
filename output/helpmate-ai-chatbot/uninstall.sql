-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helpmate_version');
DELETE FROM wp_options WHERE option_name LIKE '%_admin';
DELETE FROM wp_options WHERE option_name LIKE 'helpmate_review_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'helpmate_crm_analytics_reports', 'helpmate_job_notices', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'helpmate_crm_analytics_reports', 'helpmate_job_notices', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'helpmate_crm_analytics_reports', 'helpmate_job_notices', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'helpmate_crm_analytics_reports', 'helpmate_job_notices', 'rating');


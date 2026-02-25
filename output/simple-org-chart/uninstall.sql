-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('org_chart_sample', 'org_array');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('top_org_level', 'shr_pic', 'org_job_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('top_org_level', 'shr_pic', 'org_job_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('top_org_level', 'shr_pic', 'org_job_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('top_org_level', 'shr_pic', 'org_job_title');


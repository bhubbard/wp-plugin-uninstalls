-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blech_theme_jobtexts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('job_vybleid', 'job_data', 'job_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('job_vybleid', 'job_data', 'job_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('job_vybleid', 'job_data', 'job_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('job_vybleid', 'job_data', 'job_status');


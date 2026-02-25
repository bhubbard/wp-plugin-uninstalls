-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_connectoor_jobs_branding_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_connectoor_jobs_begin', '_connectoor_jobs_deadline', '_connectoor_jobs_begin_raw', '_connectoor_jobs_deadline_raw', '_connectoor_jobs_deadline_visible');
DELETE FROM wp_usermeta WHERE meta_key IN ('_connectoor_jobs_begin', '_connectoor_jobs_deadline', '_connectoor_jobs_begin_raw', '_connectoor_jobs_deadline_raw', '_connectoor_jobs_deadline_visible');
DELETE FROM wp_termmeta WHERE meta_key IN ('_connectoor_jobs_begin', '_connectoor_jobs_deadline', '_connectoor_jobs_begin_raw', '_connectoor_jobs_deadline_raw', '_connectoor_jobs_deadline_visible');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_connectoor_jobs_begin', '_connectoor_jobs_deadline', '_connectoor_jobs_begin_raw', '_connectoor_jobs_deadline_raw', '_connectoor_jobs_deadline_visible');


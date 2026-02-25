-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zcvideo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zcvideo_public', '_zcvideo_formats', '_zcvideo_status', '_zcvideo_input', '_zcvideo_job_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zcvideo_public', '_zcvideo_formats', '_zcvideo_status', '_zcvideo_input', '_zcvideo_job_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zcvideo_public', '_zcvideo_formats', '_zcvideo_status', '_zcvideo_input', '_zcvideo_job_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zcvideo_public', '_zcvideo_formats', '_zcvideo_status', '_zcvideo_input', '_zcvideo_job_id');


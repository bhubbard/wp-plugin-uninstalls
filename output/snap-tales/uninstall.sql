-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_dismissed_notices', 'csf_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_image';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_activation';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_old_columns';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('snap_tales_media_url', 'snap_tales_story_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('snap_tales_media_url', 'snap_tales_story_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('snap_tales_media_url', 'snap_tales_story_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('snap_tales_media_url', 'snap_tales_story_visibility');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';


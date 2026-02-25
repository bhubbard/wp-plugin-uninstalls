-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smiling_video_user', 'smiling_video_password', 'smiling_video_publishmode');


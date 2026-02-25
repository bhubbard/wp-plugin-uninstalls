-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sight_db_activation', 'sight_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sight_post_video_url', 'sight_post_video_bg_start_time', 'sight_post_video_bg_end_time', 'sight_post_video_location', 'sight_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('sight_post_video_url', 'sight_post_video_bg_start_time', 'sight_post_video_bg_end_time', 'sight_post_video_location', 'sight_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('sight_post_video_url', 'sight_post_video_bg_start_time', 'sight_post_video_bg_end_time', 'sight_post_video_location', 'sight_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sight_post_video_url', 'sight_post_video_bg_start_time', 'sight_post_video_bg_end_time', 'sight_post_video_location', 'sight_featured_image');


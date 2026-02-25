-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ob_mp4_cc_ffmpeg_path', 'ob_mp4_cc_ffmpeg_exists', 'ob_mp4_cc_max_video_size', 'ob_mp4_cc_system_environment_section', 'ob_mp4_cc_ffmpeg_speed', 'ob_mp4_cc_ffmpeg_quality', 'ob_mp4_cc_category_children');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_video_id', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_video_id', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_video_id', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_video_id', '_thumbnail_id');


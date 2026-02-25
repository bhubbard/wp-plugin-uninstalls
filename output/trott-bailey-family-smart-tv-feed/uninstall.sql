-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbf_rvf_settings', 'tbf_rvf_selected_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tbf_rvf_video_url', '_tbf_rvf_thumbnail_url', '_tbf_rvf_thumbnail_id', '_tbf_rvf_video_length', 'tbf_rvf_video_url', 'tbf_rvf_poster_image_url', 'tbf_rvf_poster_image_type', 'tbf_rvf_duration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tbf_rvf_video_url', '_tbf_rvf_thumbnail_url', '_tbf_rvf_thumbnail_id', '_tbf_rvf_video_length', 'tbf_rvf_video_url', 'tbf_rvf_poster_image_url', 'tbf_rvf_poster_image_type', 'tbf_rvf_duration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tbf_rvf_video_url', '_tbf_rvf_thumbnail_url', '_tbf_rvf_thumbnail_id', '_tbf_rvf_video_length', 'tbf_rvf_video_url', 'tbf_rvf_poster_image_url', 'tbf_rvf_poster_image_type', 'tbf_rvf_duration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tbf_rvf_video_url', '_tbf_rvf_thumbnail_url', '_tbf_rvf_thumbnail_id', '_tbf_rvf_video_length', 'tbf_rvf_video_url', 'tbf_rvf_poster_image_url', 'tbf_rvf_poster_image_type', 'tbf_rvf_duration');


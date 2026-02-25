-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('video_thumbnails', 'video_thumbnails_post_types', 'video_thumbnails_save_media', 'video_thumbnails_set_featured', 'video_thumbnails_custom_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_thumbnail_test_image', '_tern_wp_youtube_video', 'video_thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_thumbnail_test_image', '_tern_wp_youtube_video', 'video_thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_thumbnail_test_image', '_tern_wp_youtube_video', 'video_thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_thumbnail_test_image', '_tern_wp_youtube_video', 'video_thumbnail');


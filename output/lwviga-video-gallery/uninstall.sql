-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwviga_video_gallery_default_thumbnail', 'lwviga_video_gallery_primary_color', 'lwviga_video_gallery_overlay_color', 'lwviga_video_gallery_overlay_opacity');
DELETE FROM wp_options WHERE option_name LIKE 'lwviga_video_gallery_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lwviga_video_gallery_videos');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lwviga_video_gallery_videos');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lwviga_video_gallery_videos');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lwviga_video_gallery_videos');


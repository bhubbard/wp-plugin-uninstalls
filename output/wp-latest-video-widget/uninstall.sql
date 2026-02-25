-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_site', 'youtube_video_id', 'vimeo_video_id', 'apropo_video_id', 'apropo_video_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_site', 'youtube_video_id', 'vimeo_video_id', 'apropo_video_id', 'apropo_video_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_site', 'youtube_video_id', 'vimeo_video_id', 'apropo_video_id', 'apropo_video_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_site', 'youtube_video_id', 'vimeo_video_id', 'apropo_video_id', 'apropo_video_key');


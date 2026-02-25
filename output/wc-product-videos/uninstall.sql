-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_youtube_url_meta_key', '_video_position_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_youtube_url_meta_key', '_video_position_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_youtube_url_meta_key', '_video_position_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_youtube_url_meta_key', '_video_position_meta_key');


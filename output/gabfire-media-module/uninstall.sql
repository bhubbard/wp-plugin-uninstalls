-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iframe', 'video-mp4', 'video-webm', 'video-ogv', 'video-poster', 'caption-url-1', 'caption-url-2', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('iframe', 'video-mp4', 'video-webm', 'video-ogv', 'video-poster', 'caption-url-1', 'caption-url-2', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('iframe', 'video-mp4', 'video-webm', 'video-ogv', 'video-poster', 'caption-url-1', 'caption-url-2', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iframe', 'video-mp4', 'video-webm', 'video-ogv', 'video-poster', 'caption-url-1', 'caption-url-2', '_wp_attachment_image_alt');


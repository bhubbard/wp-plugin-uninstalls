-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('video_accessibility_statement', 'video_accessibility_youtube_api_key', 'video_accessibility_youtube_nocookie');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_accessibility_transcript');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_accessibility_transcript');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_accessibility_transcript');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_accessibility_transcript');


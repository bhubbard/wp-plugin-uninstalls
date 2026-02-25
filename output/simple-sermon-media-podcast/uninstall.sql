-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smet0_activation_redirect', 'rewrite_rules', 'smet0_podcast_title', 'smet0_podcast_desc', 'smet0_podcast_email', 'smet0_podcast_posts_per_page', 'smet0_podcast_image', 'smet0_podcast_category', 'smet0_podcast_subcategory', 'smet0_podcast_explicit', 'smet0_podcast_owner', 'smet0_podcast_bible_passage_prefix');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sermon_media_bible_passage', 'sermon_media_video_url', 'sermon_media_mp3_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('sermon_media_bible_passage', 'sermon_media_video_url', 'sermon_media_mp3_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('sermon_media_bible_passage', 'sermon_media_video_url', 'sermon_media_mp3_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sermon_media_bible_passage', 'sermon_media_video_url', 'sermon_media_mp3_url');


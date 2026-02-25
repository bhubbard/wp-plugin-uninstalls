-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sml_theme_support_styles', 'sml_theme_support_content', 'sml_terms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdf_thumbnail_url', 'score-attachment-id', 'parts-attachment-id', 'audio-attachment-id', 'piece-video-url', 'no-download-message', 'featured-audio');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdf_thumbnail_url', 'score-attachment-id', 'parts-attachment-id', 'audio-attachment-id', 'piece-video-url', 'no-download-message', 'featured-audio');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdf_thumbnail_url', 'score-attachment-id', 'parts-attachment-id', 'audio-attachment-id', 'piece-video-url', 'no-download-message', 'featured-audio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdf_thumbnail_url', 'score-attachment-id', 'parts-attachment-id', 'audio-attachment-id', 'piece-video-url', 'no-download-message', 'featured-audio');


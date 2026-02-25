-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('refactored_video_importer', 'mvi-youtube-api-key-verified', 'mvi-youtube-api-key', 'mvi-vimeo-client-id', 'mvi-vimeo-client-secret', 'mvi-templates', 'mvi-vimeo-api-id', 'mvi-vimeo-api-secret', 'meks-video-importer-vimeo-access-token');


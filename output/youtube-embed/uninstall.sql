-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youtube_embed_version', 'youtube_embed_general', 'youtube_embed_shortcode_site', 'youtube_embed_shortcode_admin', 'youtube_embed_shortcode');
DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_shortcode_%';
DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_list%';
DELETE FROM wp_options WHERE option_name LIKE 'youtube_embed_profile%';
DELETE FROM wp_options WHERE option_name LIKE 'youtubeembed_%';


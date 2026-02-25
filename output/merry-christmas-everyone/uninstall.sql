-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmas_media', 'santas', 'xmas_url', 'xmas_mp3', 'xmas_ogg');


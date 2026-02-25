-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('location', 'version', 'amazon_id', 'auto_choice', 'autoplay', 'autoadvance', 'playlink', 'displaystate', 'volume', 'default_album_art', 'parse', 'termdetection', 'youtube', 'skin', 'choice');


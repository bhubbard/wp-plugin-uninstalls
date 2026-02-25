-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spotify-play-button-for-wordpress-link', 'spotify-play-button-for-wordpress-default', 'spotify-play-button-for-wordpress-size');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwppp-library', 'jwppp-licence', 'jwppp-position', 'jwppp-poster-image', 'jwppp-player-width', 'jwppp-player-height', 'jwppp-skin', 'jwppp-show-related', 'jwppp-active-share', 'jwppp-share-heading', 'jwppp-embed-video', 'jwppp-active-ads');
DELETE FROM wp_options WHERE option_name LIKE 'jwppp-type-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jwppp-video-url', '_jwppp-video-title', '_jwppp-video-description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jwppp-video-url', '_jwppp-video-title', '_jwppp-video-description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jwppp-video-url', '_jwppp-video-title', '_jwppp-video-description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jwppp-video-url', '_jwppp-video-title', '_jwppp-video-description');


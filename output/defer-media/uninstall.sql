-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('defer-media-enabled', 'defer-media-appearanceOffsetImages', 'defer-media-appearanceOffsetVideos', 'defer-media-appearanceOffsetIframes');


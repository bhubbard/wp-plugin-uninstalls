-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_media_sizes_options', 'disable-media-sizes-dismiss-notice');


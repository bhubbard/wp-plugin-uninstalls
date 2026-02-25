-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsmapCenter', 'gsmapZoom', 'gsmapSize', 'gsmapImageFormat', 'gsmapMapType', 'gsmapAPIKey', 'gsmapClass', 'gsmapStyle');


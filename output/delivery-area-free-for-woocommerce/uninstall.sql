-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daw-google-map-api-key', 'daw-polygons', 'daw-delivery-time');


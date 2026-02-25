-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pronamic_google_maps_key', 'Pronamic_Google_maps', '_pronamic_google_maps_fresh_design');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pronamic_google_maps_latitude', '_pronamic_google_maps_longitude', '_pronamic_google_maps_geocode_status', '_pronamic_google_maps_active', '_pronamic_google_maps_map_type', '_pronamic_google_maps_zoom', '_pronamic_google_maps_title', '_pronamic_google_maps_description', '_pronamic_google_maps_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pronamic_google_maps_latitude', '_pronamic_google_maps_longitude', '_pronamic_google_maps_geocode_status', '_pronamic_google_maps_active', '_pronamic_google_maps_map_type', '_pronamic_google_maps_zoom', '_pronamic_google_maps_title', '_pronamic_google_maps_description', '_pronamic_google_maps_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pronamic_google_maps_latitude', '_pronamic_google_maps_longitude', '_pronamic_google_maps_geocode_status', '_pronamic_google_maps_active', '_pronamic_google_maps_map_type', '_pronamic_google_maps_zoom', '_pronamic_google_maps_title', '_pronamic_google_maps_description', '_pronamic_google_maps_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pronamic_google_maps_latitude', '_pronamic_google_maps_longitude', '_pronamic_google_maps_geocode_status', '_pronamic_google_maps_active', '_pronamic_google_maps_map_type', '_pronamic_google_maps_zoom', '_pronamic_google_maps_title', '_pronamic_google_maps_description', '_pronamic_google_maps_address');


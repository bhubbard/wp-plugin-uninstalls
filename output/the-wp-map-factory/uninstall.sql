-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmf_options', 'tmf_settings', 'tmf_units_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmf-map-the-basics-object', 'tmf-map-placecard-object', 'tmf-map-marker-array', 'tmf-map-circle-array', 'tmf-map-polygon-array', 'tmf-map-polyline-array');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmf-map-the-basics-object', 'tmf-map-placecard-object', 'tmf-map-marker-array', 'tmf-map-circle-array', 'tmf-map-polygon-array', 'tmf-map-polyline-array');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmf-map-the-basics-object', 'tmf-map-placecard-object', 'tmf-map-marker-array', 'tmf-map-circle-array', 'tmf-map-polygon-array', 'tmf-map-polyline-array');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmf-map-the-basics-object', 'tmf-map-placecard-object', 'tmf-map-marker-array', 'tmf-map-circle-array', 'tmf-map-polygon-array', 'tmf-map-polyline-array');


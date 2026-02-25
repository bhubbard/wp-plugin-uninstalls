-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osm_default_lat', 'osm_default_lon', 'osm_default_zoom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_OSM_geo_data', 'OSM_geo_data', 'OSM_Marker_01_LatLon', 'OSM_Marker_01_Icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_OSM_geo_data', 'OSM_geo_data', 'OSM_Marker_01_LatLon', 'OSM_Marker_01_Icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_OSM_geo_data', 'OSM_geo_data', 'OSM_Marker_01_LatLon', 'OSM_Marker_01_Icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_OSM_geo_data', 'OSM_geo_data', 'OSM_Marker_01_LatLon', 'OSM_Marker_01_Icon');


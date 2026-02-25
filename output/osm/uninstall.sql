-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osm_default_lat', 'osm_default_lon', 'osm_default_zoom', 'osm_custom_field', 'osm_zoom_level');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OSM_geo_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('OSM_geo_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('OSM_geo_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OSM_geo_icon');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_LatLon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_LatLon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_LatLon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_LatLon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Icon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Icon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Icon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Icon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Text';


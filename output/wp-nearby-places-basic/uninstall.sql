-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wnp_nearbyplaces_api_key', 'nearbyplaces_base_latitude', 'nearbyplaces_base_longitude', 'nearbyplaces_base_location_name', 'nearbyplaces_base_radius', 'nearbyplaces_base_latitude2', 'nearbyplaces_base_longitude2', 'nearbyplaces_base_location_name2', 'nearbyplaces_base_latitude3', 'nearbyplaces_base_longitude3', 'nearbyplaces_base_location_name3', 'nearbyplaces_base_location_marker_icon', 'nearbyplaces_base_location_marker_icon2', 'nearbyplaces_base_location_marker_icon3', 'my-acf-notice-dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('apikey', 'latitude', 'longitude', 'loc_name', 'radius', 'latitude2', 'longitude2', 'loc_name2', 'latitude3', 'longitude3', 'loc_name3');
DELETE FROM wp_usermeta WHERE meta_key IN ('apikey', 'latitude', 'longitude', 'loc_name', 'radius', 'latitude2', 'longitude2', 'loc_name2', 'latitude3', 'longitude3', 'loc_name3');
DELETE FROM wp_termmeta WHERE meta_key IN ('apikey', 'latitude', 'longitude', 'loc_name', 'radius', 'latitude2', 'longitude2', 'loc_name2', 'latitude3', 'longitude3', 'loc_name3');
DELETE FROM wp_commentmeta WHERE meta_key IN ('apikey', 'latitude', 'longitude', 'loc_name', 'radius', 'latitude2', 'longitude2', 'loc_name2', 'latitude3', 'longitude3', 'loc_name3');


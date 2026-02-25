-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leafext_awesome', 'leafext_deleting', 'leafext_eleparams', 'leafext_values', 'leafext_multieleparams', 'leafext_sgpxparams', 'leafext_sgpx_unclean_db', 'leafext_waypoints', 'leafext_filemgr', 'leafext_gesture', 'leaflet_scroll_wheel_zoom', 'leafext_parentgroup', 'leafext_canvas', 'leafext_hover', 'leafext_cluster', 'leafext_placementparams', 'leafext_featuredmap', 'leafext_overviewmap', 'leaflet_mapid', 'leaflet_map_tile_url', 'leaflet_map_tile_url_subdomains', 'leaflet_default_attribution', 'leaflet_default_min_zoom', 'leaflet_default_max_zoom', 'leafext_maps', 'leafext_providers', 'leafext_zoomhome', 'active_sitewide_plugins', 'leaflet_default_width', 'leaflet_default_height', 'leaflet_default_zoom');
DELETE FROM wp_options WHERE option_name LIKE 'leafext_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'leafext_file_listing_%';
DELETE FROM wp_options WHERE option_name LIKE 'leafext_ovm_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_latitude', 'geo_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude');


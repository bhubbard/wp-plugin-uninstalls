-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osm_cats_baselayer_osm', 'osm_cats_baselayer_google_roadmap', 'osm_cats_baselayer_google_satellite', 'osm_cats_baselayer_google_hybrid', 'osm_cats_baselayer_google_terrain', 'osm_cats_map_width', 'osm_cats_map_height', 'osm_cats_center_lon', 'osm_cats_center_lat', 'osm_cats_zoom_level', 'osm_cats_disable_zoom_wheel', 'osm_cats_include_cats', 'osm_cats_exclude_cats', 'osm_cats_marker_custom_field', 'osm_cats_marker_show_thumbnail', 'osm_cats_marker_show_excerpt', 'osm_cats_marker_images_path');


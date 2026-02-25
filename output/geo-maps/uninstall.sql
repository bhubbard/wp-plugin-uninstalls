-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo_maps_version', 'geo_maps_first_install_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_maps_meta_active_tab', 'geo_maps_markers', 'geo_maps_map_type', 'geo_maps_marker_image', 'geo_maps_map_scroll_wheel_zoom', 'geo_maps_map_draw_marker_line', 'geo_maps_popup_show_on', 'geo_maps_map_control_position', 'geo_maps_osm_map_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_maps_meta_active_tab', 'geo_maps_markers', 'geo_maps_map_type', 'geo_maps_marker_image', 'geo_maps_map_scroll_wheel_zoom', 'geo_maps_map_draw_marker_line', 'geo_maps_popup_show_on', 'geo_maps_map_control_position', 'geo_maps_osm_map_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_maps_meta_active_tab', 'geo_maps_markers', 'geo_maps_map_type', 'geo_maps_marker_image', 'geo_maps_map_scroll_wheel_zoom', 'geo_maps_map_draw_marker_line', 'geo_maps_popup_show_on', 'geo_maps_map_control_position', 'geo_maps_osm_map_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_maps_meta_active_tab', 'geo_maps_markers', 'geo_maps_map_type', 'geo_maps_marker_image', 'geo_maps_map_scroll_wheel_zoom', 'geo_maps_map_draw_marker_line', 'geo_maps_popup_show_on', 'geo_maps_map_control_position', 'geo_maps_osm_map_provider');


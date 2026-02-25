-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgl_zoom_level', 'focus_point', 'wpgl_sel_routes', 'wpgl_sel_places');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('place_location', 'places_with_routes', 'route_coordinate');
DELETE FROM wp_usermeta WHERE meta_key IN ('place_location', 'places_with_routes', 'route_coordinate');
DELETE FROM wp_termmeta WHERE meta_key IN ('place_location', 'places_with_routes', 'route_coordinate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('place_location', 'places_with_routes', 'route_coordinate');


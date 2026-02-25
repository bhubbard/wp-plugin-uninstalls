-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_osm_width', 'embed_osm_height', 'embed_osm_layer', 'embed_osm_lat', 'embed_osm_lon', 'embed_osm_zoom', 'embed_osm_marker', 'embed_osm_link');


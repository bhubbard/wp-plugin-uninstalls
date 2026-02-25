-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osm-tiles-proxy-rest-api-enabled', 'osm-tiles-proxy-cache-enabled', 'osm-tiles-proxy-osm-url', 'osm_tiles_proxy_out_of_range_image_url', 'osm_tiles_proxy_min_zoom', 'osm_tiles_proxy_max_zoom', 'osm_tiles_proxy_min_x', 'osm_tiles_proxy_max_x', 'osm_tiles_proxy_min_y', 'osm_tiles_proxy_max_y');


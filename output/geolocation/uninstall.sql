-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geolocation_default_zoom', 'geolocation_wp_pin', 'geolocation_map_display', 'geolocation_map_width_page', 'geolocation_map_height_page', 'geolocation_shortcode', 'geolocation_google_maps_api_key', 'geolocation_osm_use_proxy', 'geolocation_osm_tiles_url', 'geolocation_osm_nominatim_url', 'geolocation_provider', 'geolocation_map_width', 'geolocation_map_height', 'geolocation_map_position', 'geolocation_updateAddresses', 'geolocation_osm_leaflet_js_url', 'geolocation_osm_leaflet_css_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'geo_address', 'geo_address_reverse', 'geo_public', 'geo_enabled', 'category');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'geo_address', 'geo_address_reverse', 'geo_public', 'geo_enabled', 'category');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'geo_address', 'geo_address_reverse', 'geo_public', 'geo_enabled', 'category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'geo_address', 'geo_address_reverse', 'geo_public', 'geo_enabled', 'category');


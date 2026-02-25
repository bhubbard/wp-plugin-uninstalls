-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geotagmapper_country', 'geotagmapper_state', 'geotagmapper_city', 'geotagmapper_street', 'geotagmapper_zip', 'geotagmapper_lat', 'geotagmapper_lng', 'geotagmapper_country_code', 'geotagmapper_subcountry_code', 'geotagmapper_place_on_front', 'geotagmapper_place_on_single_post', 'geotagmapper_place_on_single_page', 'geotagmapper_place_on_category', 'geotagmapper_place_on_tag', 'geotagmapper_place_on_search');


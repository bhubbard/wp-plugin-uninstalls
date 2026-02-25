-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sloc_bing_style', 'sloc_geoapify_style', 'sloc_google_style', 'sloc_here_style', 'sloc_here_type', 'sloc_mapbox_style', 'sloc_mapquest_style', 'sloc_tomtom_style', 'sloc_elevation_provider', 'sloc_last_report', 'sloc_geolocation_provider', 'sloc_measurements', 'geo_public', 'sloc_map_display', 'sloc_taxonomy_display', 'sloc_altitude', 'sloc_geo_provider', 'sloc_country', 'sloc_auto_micropub', 'sloc_map_provider', 'sloc_venue_provider', 'sloc_weather_provider', 'sloc_fallback_weather_provider', 'sloc_width', 'sloc_aspect', 'sloc_zoom', 'sloc_location_provider', 'sloc_bing_api', 'sloc_geonames_user', 'sloc_google_api', 'sloc_mapquest_api', 'sloc_openroute_api', 'sloc_geoapify_api', 'sloc_here_api', 'sloc_locationiq_api', 'sloc_pelias_api', 'sloc_pelias_url', 'sloc_mapbox_api', 'sloc_mapbox_user', 'sloc_staticmap_url', 'sloc_staticmap_style', 'sloc_tomtom_api', 'sloc_aeris_pws', 'sloc_aeris_client_id', 'sloc_aeris_client_secret', 'sloc_meteostat_api', 'sloc_metoffice_api', 'sloc_openweathermap_api', 'sloc_pirateweather_api', 'sloc_stations');
DELETE FROM wp_options WHERE option_name IN ('sloc_visualcrossing_api', 'sloc_weatherbit_api', 'sloc_weatherstack_api', 'metoffice_sites');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('venue_id', 'venue_radius', 'venue_url', 'geo_public', 'geo_zoom', 'mf2_checkin', 'geo_timezone', 'geo_altitude', 'geo_address', 'country', 'region', 'locality', 'mf2_published', 'geo_weather', '_wp_attachment_metadata', 'compass_url', 'compass_api');
DELETE FROM wp_usermeta WHERE meta_key IN ('venue_id', 'venue_radius', 'venue_url', 'geo_public', 'geo_zoom', 'mf2_checkin', 'geo_timezone', 'geo_altitude', 'geo_address', 'country', 'region', 'locality', 'mf2_published', 'geo_weather', '_wp_attachment_metadata', 'compass_url', 'compass_api');
DELETE FROM wp_termmeta WHERE meta_key IN ('venue_id', 'venue_radius', 'venue_url', 'geo_public', 'geo_zoom', 'mf2_checkin', 'geo_timezone', 'geo_altitude', 'geo_address', 'country', 'region', 'locality', 'mf2_published', 'geo_weather', '_wp_attachment_metadata', 'compass_url', 'compass_api');
DELETE FROM wp_commentmeta WHERE meta_key IN ('venue_id', 'venue_radius', 'venue_url', 'geo_public', 'geo_zoom', 'mf2_checkin', 'geo_timezone', 'geo_altitude', 'geo_address', 'country', 'region', 'locality', 'mf2_published', 'geo_weather', '_wp_attachment_metadata', 'compass_url', 'compass_api');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'geo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'geo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'geo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'geo_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'weather_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'weather_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'weather_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'weather_%';


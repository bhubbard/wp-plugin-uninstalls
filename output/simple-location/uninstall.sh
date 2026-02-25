#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sloc_bing_style'
wp option delete 'sloc_geoapify_style'
wp option delete 'sloc_google_style'
wp option delete 'sloc_here_style'
wp option delete 'sloc_here_type'
wp option delete 'sloc_mapbox_style'
wp option delete 'sloc_mapquest_style'
wp option delete 'sloc_tomtom_style'
wp option delete 'sloc_elevation_provider'
wp option delete 'sloc_last_report'
wp option delete 'sloc_geolocation_provider'
wp option delete 'sloc_measurements'
wp option delete 'geo_public'
wp option delete 'sloc_map_display'
wp option delete 'sloc_taxonomy_display'
wp option delete 'sloc_altitude'
wp option delete 'sloc_geo_provider'
wp option delete 'sloc_country'
wp option delete 'sloc_auto_micropub'
wp option delete 'sloc_map_provider'
wp option delete 'sloc_venue_provider'
wp option delete 'sloc_weather_provider'
wp option delete 'sloc_fallback_weather_provider'
wp option delete 'sloc_width'
wp option delete 'sloc_aspect'
wp option delete 'sloc_zoom'
wp option delete 'sloc_location_provider'
wp option delete 'sloc_bing_api'
wp option delete 'sloc_geonames_user'
wp option delete 'sloc_google_api'
wp option delete 'sloc_mapquest_api'
wp option delete 'sloc_openroute_api'
wp option delete 'sloc_geoapify_api'
wp option delete 'sloc_here_api'
wp option delete 'sloc_locationiq_api'
wp option delete 'sloc_pelias_api'
wp option delete 'sloc_pelias_url'
wp option delete 'sloc_mapbox_api'
wp option delete 'sloc_mapbox_user'
wp option delete 'sloc_staticmap_url'
wp option delete 'sloc_staticmap_style'
wp option delete 'sloc_tomtom_api'
wp option delete 'sloc_aeris_pws'
wp option delete 'sloc_aeris_client_id'
wp option delete 'sloc_aeris_client_secret'
wp option delete 'sloc_meteostat_api'
wp option delete 'sloc_metoffice_api'
wp option delete 'sloc_openweathermap_api'
wp option delete 'sloc_pirateweather_api'
wp option delete 'sloc_stations'
wp option delete 'sloc_visualcrossing_api'
wp option delete 'sloc_weatherbit_api'
wp option delete 'sloc_weatherstack_api'

# Delete Transients
wp transient delete 'metoffice_sites'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venue_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venue_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venue_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venue_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venue_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venue_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venue_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venue_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venue_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'geo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'geo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'geo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'geo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_checkin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_checkin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_checkin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_checkin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_altitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_altitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_altitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_altitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'weather_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'weather_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'weather_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'weather_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_weather'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_weather'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_weather'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_weather'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compass_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compass_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compass_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compass_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compass_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compass_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compass_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compass_api'"

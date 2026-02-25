#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geolocation_default_zoom'
wp option delete 'geolocation_wp_pin'
wp option delete 'geolocation_map_display'
wp option delete 'geolocation_map_width_page'
wp option delete 'geolocation_map_height_page'
wp option delete 'geolocation_shortcode'
wp option delete 'geolocation_google_maps_api_key'
wp option delete 'geolocation_osm_use_proxy'
wp option delete 'geolocation_osm_tiles_url'
wp option delete 'geolocation_osm_nominatim_url'
wp option delete 'geolocation_provider'
wp option delete 'geolocation_map_width'
wp option delete 'geolocation_map_height'
wp option delete 'geolocation_map_position'
wp option delete 'geolocation_updateAddresses'
wp option delete 'geolocation_osm_leaflet_js_url'
wp option delete 'geolocation_osm_leaflet_css_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_address_reverse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_address_reverse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_address_reverse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_address_reverse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_geolocation_max_zoom'
wp option delete 'hp_geolocation_hide_address'
wp option delete 'hp_geolocation_models'
wp option delete 'hp_geolocation_region_types'
wp option delete 'hp_geolocation_provider'
wp option delete 'hp_geolocation_countries'
wp option delete 'hp_geolocation_radius'
wp option delete 'hp_geolocation_use_miles'
wp option delete 'hp_geolocation_generate_regions'
wp option delete 'hp_mapbox_api_key'
wp option delete 'hp_gmaps_api_key'
wp option delete 'hp_gmaps_use_legacy_api'
wp option delete 'hp_mapbox_secret_key'
wp option delete 'hp_gmaps_secret_key'
wp option delete 'hp_installed_time'
wp option delete 'hp_listing_related_criteria'
wp option delete 'hp_geolocation_enable_sorting'
wp option delete 'hp_geolocation_allow_radius'
wp option delete 'hp_geolocation_max_radius'
wp option delete 'hp_geolocation_address_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_code'"

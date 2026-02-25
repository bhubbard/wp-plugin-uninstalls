#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pronamic_google_maps_key'
wp option delete 'Pronamic_Google_maps'
wp option delete '_pronamic_google_maps_fresh_design'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_geocode_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_geocode_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_geocode_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_geocode_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_google_maps_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_google_maps_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_google_maps_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_google_maps_address'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmf_options'
wp option delete 'tmf_settings'
wp option delete 'tmf_units_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-the-basics-object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-the-basics-object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-the-basics-object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-the-basics-object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-placecard-object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-placecard-object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-placecard-object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-placecard-object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-marker-array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-marker-array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-marker-array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-marker-array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-circle-array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-circle-array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-circle-array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-circle-array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-polygon-array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-polygon-array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-polygon-array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-polygon-array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmf-map-polyline-array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmf-map-polyline-array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmf-map-polyline-array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmf-map-polyline-array'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo2wp_options'
wp option delete 'phototools_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EXIF_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EXIF_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EXIF_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EXIF_location'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'store_locator_goong_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_hotline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_hotline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_hotline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_hotline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_google_maps_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_google_maps_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_google_maps_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_google_maps_url'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_mods_listify'
wp option delete 'theme_mods_listify-child'
wp option delete 'listify_version'
wp option delete 'job_manager_google_maps_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_featured_img_to_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_featured_img_to_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_featured_img_to_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_featured_img_to_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocated'"

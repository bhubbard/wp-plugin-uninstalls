#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_google_maps_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_main_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_main_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_main_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_main_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_author_can_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_author_can_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_author_can_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_author_can_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocated'"

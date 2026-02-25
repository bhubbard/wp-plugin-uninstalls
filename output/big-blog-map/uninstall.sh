#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbm_options'
wp option delete 'my_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbm_map_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbm_map_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbm_map_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbm_map_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbm_location_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbm_location_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbm_location_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbm_location_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbm_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbm_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbm_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbm_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbm_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbm_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbm_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbm_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbm_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbm_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbm_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbm_include'"

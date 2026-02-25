#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_key'
wp option delete 'geo_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_gp_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_gp_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_gp_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_gp_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_gp_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_gp_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_gp_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_gp_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_gp_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_gp_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_gp_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_gp_longitude'"

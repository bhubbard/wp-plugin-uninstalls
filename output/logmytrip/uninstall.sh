#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fromPic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fromPic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fromPic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fromPic'"

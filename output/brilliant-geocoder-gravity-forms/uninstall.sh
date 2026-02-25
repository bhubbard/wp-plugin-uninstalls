#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_geometa_version'
wp option delete 'wp_geometa_db_version'
wp option delete 'wp_geometa_capabilities'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myplugin_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myplugin_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myplugin_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myplugin_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgeometa_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgeometa_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgeometa_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgeometa_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myplugin_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myplugin_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myplugin_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myplugin_lng'"

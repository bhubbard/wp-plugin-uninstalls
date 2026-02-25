#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dba_google_maps_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dba_google_maps_markers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dba_google_maps_markers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dba_google_maps_markers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dba_google_maps_markers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dba_google_maps_general'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dba_google_maps_general'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dba_google_maps_general'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dba_google_maps_general'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dba_google_maps_controls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dba_google_maps_controls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dba_google_maps_controls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dba_google_maps_controls'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplemaps_first_map_id'
wp option delete 'sm_settings'
wp option delete 'simplemaps_mapdata_url'
wp option delete 'simplemaps_mapfile_url'
wp option delete 'simplemaps_legacy_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_data_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_data_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_data_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_data_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_protected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_protected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_protected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_protected'"

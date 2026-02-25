#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twgm_gmaps_api_key'
wp option delete 'twgm_gmaps_def_lat'
wp option delete 'twgm_gmaps_def_lng'
wp option delete 'twgm_gmaps_def_theme'
wp option delete 'twgm_gmaps_def_zoom'
wp option delete 'plugin_error'
wp option delete 'twgm_db_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twgm_applymarker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twgm_applymarker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twgm_applymarker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twgm_applymarker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twgm_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twgm_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twgm_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twgm_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twgm_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twgm_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twgm_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twgm_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twgm_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twgm_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twgm_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twgm_map'"

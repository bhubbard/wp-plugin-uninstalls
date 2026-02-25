#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lfh_mapquest_key'
wp option delete 'lfh_distance_unit'
wp option delete 'lfh_height_unit'
wp option delete 'lfh_parent_cache'
wp option delete 'lfh_background_sub'
wp option delete 'lfh_background'
wp option delete 'lfh_cache_parent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lfh_helper_unactive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lfh_helper_unactive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lfh_helper_unactive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lfh_helper_unactive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lfh_stroke_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lfh_stroke_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lfh_stroke_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lfh_stroke_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lfh_stroke_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lfh_stroke_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lfh_stroke_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lfh_stroke_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lfh_download_gpx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lfh_download_gpx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lfh_download_gpx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lfh_download_gpx'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lfh_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lfh_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lfh_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lfh_'"

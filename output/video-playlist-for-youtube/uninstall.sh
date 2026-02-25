#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'video_plylst_admin_notice'
wp option delete 'vpfy_reg_ytubapi_key'
wp option delete 'vpfy_vid_autoply'
wp option delete 'vpfy_vid_length'
wp option delete 'ytpp_controls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customdata_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customdata_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customdata_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customdata_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_utubeSliderRange'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_utubeSliderRange'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_utubeSliderRange'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_utubeSliderRange'"

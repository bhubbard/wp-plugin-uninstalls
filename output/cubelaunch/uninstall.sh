#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cubelaunch_settings'
wp option delete 'cubelaunch_pro_license_status'
wp option delete 'cubelaunch_pro_license_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cubelaunch_shape_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cubelaunch_shape_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cubelaunch_shape_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cubelaunch_shape_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cubelaunch_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cubelaunch_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cubelaunch_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cubelaunch_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cl_hide_cpt_mobile_notice_v1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cl_hide_cpt_mobile_notice_v1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cl_hide_cpt_mobile_notice_v1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cl_hide_cpt_mobile_notice_v1'"

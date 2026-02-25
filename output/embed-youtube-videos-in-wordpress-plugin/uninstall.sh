#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pv_height'
wp option delete 'pv_width'
wp option delete 'pv_single_only'
wp option delete 'pv_float'
wp option delete 'pv_widget_title'
wp option delete 'pv_in_post'
wp option delete 'pv_in_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_in_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_in_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_in_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_in_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_video_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_video_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_video_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_video_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_float'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_float'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_float'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_float'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_in_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_in_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_in_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_in_post'"

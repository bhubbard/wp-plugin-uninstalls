#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtwf_enable_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtwf_enable_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtwf_enable_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtwf_enable_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtwf_tab_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtwf_tab_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtwf_tab_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtwf_tab_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtwf_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtwf_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtwf_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtwf_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtwf_video_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtwf_video_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtwf_video_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtwf_video_content'"

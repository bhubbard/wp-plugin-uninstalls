#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfv_seetings_opt'
wp option delete 'pfv_autoply_video'
wp option delete 'pfv_open_vid_inpopup'
wp option delete 'vpfy_disply_video'
wp option delete 'pfvvideoheight'
wp option delete 'pfv_video_display_only_single_post'
wp option delete 'pfvideo_pst_adminnotice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfv_vimeo_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfv_vimeo_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfv_vimeo_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfv_vimeo_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfv_custom_vid_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfv_custom_vid_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfv_custom_vid_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfv_custom_vid_url'"

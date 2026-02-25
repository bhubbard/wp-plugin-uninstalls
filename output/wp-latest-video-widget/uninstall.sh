#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeo_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeo_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeo_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeo_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apropo_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apropo_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apropo_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apropo_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apropo_video_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apropo_video_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apropo_video_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apropo_video_key'"

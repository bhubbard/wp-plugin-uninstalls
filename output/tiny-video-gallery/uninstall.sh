#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_video_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_video_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_video_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_video_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_video_source'"

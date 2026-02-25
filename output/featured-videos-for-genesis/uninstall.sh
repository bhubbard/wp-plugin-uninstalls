#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfv_thumb_width'
wp option delete 'gfv_thumb_height'
wp option delete 'gfv_thumb_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gfv_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gfv_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gfv_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gfv_video_url'"

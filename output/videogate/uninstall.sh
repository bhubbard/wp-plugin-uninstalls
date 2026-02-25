#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videogate_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videogate_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videogate_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videogate_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videogate_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videogate_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videogate_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videogate_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_clicks'"

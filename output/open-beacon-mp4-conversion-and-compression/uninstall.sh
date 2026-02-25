#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ob_mp4_cc_ffmpeg_path'
wp option delete 'ob_mp4_cc_ffmpeg_exists'
wp option delete 'ob_mp4_cc_max_video_size'
wp option delete 'ob_mp4_cc_system_environment_section'
wp option delete 'ob_mp4_cc_ffmpeg_speed'
wp option delete 'ob_mp4_cc_ffmpeg_quality'
wp option delete 'ob_mp4_cc_category_children'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

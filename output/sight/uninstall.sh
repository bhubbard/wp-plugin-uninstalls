#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sight_db_activation'
wp option delete 'sight_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sight_post_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sight_post_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sight_post_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sight_post_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sight_post_video_bg_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sight_post_video_bg_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sight_post_video_bg_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sight_post_video_bg_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sight_post_video_bg_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sight_post_video_bg_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sight_post_video_bg_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sight_post_video_bg_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sight_post_video_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sight_post_video_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sight_post_video_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sight_post_video_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sight_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sight_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sight_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sight_featured_image'"

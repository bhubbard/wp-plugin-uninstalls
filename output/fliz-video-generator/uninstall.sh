#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fliz_settings'
wp option delete 'fliz_db_version'

# Clear Cron Jobs
wp cron event delete 'fliz_check_pending_videos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_auto_generate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_auto_generate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_auto_generate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_auto_generate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_video_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_video_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_video_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_video_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_video_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_video_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_video_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_video_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fliz_video_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fliz_video_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fliz_video_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fliz_video_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"

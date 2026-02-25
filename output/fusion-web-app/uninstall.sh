#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title'
wp option delete 'description'
wp option delete 'screen'
wp option delete 'requires_id'
wp option delete 'body'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_video_url'"

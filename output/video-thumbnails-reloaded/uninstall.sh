#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'video_thumbnails'
wp option delete 'video_thumbnails_post_types'
wp option delete 'video_thumbnails_save_media'
wp option delete 'video_thumbnails_set_featured'
wp option delete 'video_thumbnails_custom_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_thumbnail_test_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_thumbnail_test_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_thumbnail_test_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_thumbnail_test_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tern_wp_youtube_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tern_wp_youtube_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tern_wp_youtube_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tern_wp_youtube_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_thumbnail'"

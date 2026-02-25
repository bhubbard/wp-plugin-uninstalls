#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_videos_autoplay'
wp option delete 'embed_videos_rel'
wp option delete 'embed_videos_showinfo'
wp option delete 'embed_videos_disablekb'
wp option delete 'embed_videos_fs'
wp option delete 'embed_videos_controls'
wp option delete 'embed_videos_hd'
wp option delete 'woocommerce_enable_lightbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videolink_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videolink_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videolink_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videolink_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

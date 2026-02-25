#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwviga_video_gallery_default_thumbnail'
wp option delete 'lwviga_video_gallery_primary_color'
wp option delete 'lwviga_video_gallery_overlay_color'
wp option delete 'lwviga_video_gallery_overlay_opacity'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lwviga_video_gallery_%' OR option_name LIKE '_site_transient_lwviga_video_gallery_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwviga_video_gallery_videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwviga_video_gallery_videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwviga_video_gallery_videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwviga_video_gallery_videos'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spst_selected_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spst_selected_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spst_selected_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spst_selected_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spst_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spst_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spst_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spst_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spst_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spst_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spst_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spst_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spst_slides_per_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spst_slides_per_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spst_slides_per_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spst_slides_per_view'"

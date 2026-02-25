#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'users_gallery_button_colours'
wp option delete 'users_gallery_text_font'
wp option delete 'users_gallery_terms_added'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_item_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_item_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_item_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_item_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

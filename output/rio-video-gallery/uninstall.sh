#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'video_gallery_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_post_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_post_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_post_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_post_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'village_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'village_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'village_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'village_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remove_from_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remove_from_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remove_from_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remove_from_archive'"

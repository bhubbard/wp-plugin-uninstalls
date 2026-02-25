#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'niso_img_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'niso_img_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'niso_img_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'niso_img_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'caption_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'caption_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'caption_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'caption_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carousel_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carousel_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carousel_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carousel_settings'"

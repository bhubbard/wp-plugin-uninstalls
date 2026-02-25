#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_image_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_image_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_image_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_image_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_color_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_color_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_color_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_color_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_color_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_color_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_color_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_color_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_color_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_color_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_color_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_color_content'"

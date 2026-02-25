#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_include_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_include_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_include_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_include_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_include_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_include_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_include_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_include_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_include_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_include_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_include_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_include_comments'"

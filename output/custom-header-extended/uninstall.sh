#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_header_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_header_text_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_header_text_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_header_text_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_header_text_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_header_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_header_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_header_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_header_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"

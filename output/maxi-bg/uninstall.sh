#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmb_slides_file_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmb_slides_file_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmb_slides_file_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmb_slides_file_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmb_slide_timeout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmb_slide_timeout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmb_slide_timeout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmb_slide_timeout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmb_slide_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmb_slide_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmb_slide_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmb_slide_speed'"

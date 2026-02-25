#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ba_spacebox_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'space_boxes_img_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'space_boxes_img_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'space_boxes_img_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'space_boxes_img_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_spacebox_single_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_spacebox_single_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_spacebox_single_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_spacebox_single_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foo'"

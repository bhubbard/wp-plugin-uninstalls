#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'detail_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'detail_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'detail_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'detail_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'lv_listing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'lv_listing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'lv_listing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lv_listing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachments'"

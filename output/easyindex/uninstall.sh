#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EasyIndex'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyindexSourceUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyindexSourceUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyindexSourceUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyindexSourceUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyindexInvalidate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyindexInvalidate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyindexInvalidate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyindexInvalidate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyindexGenerate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyindexGenerate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyindexGenerate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyindexGenerate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thesis_post_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thesis_post_image'"

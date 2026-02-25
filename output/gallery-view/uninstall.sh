#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gv_items_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gv_items_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gv_items_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gv_items_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gv_show_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gv_show_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gv_show_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gv_show_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gv_show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gv_show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gv_show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gv_show_title'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sss_delete_all_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'general_slider_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'general_slider_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'general_slider_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'general_slider_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_meta_key'"

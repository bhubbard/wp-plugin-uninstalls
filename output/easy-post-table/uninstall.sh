#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_show_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_show_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_show_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_show_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_show_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_show_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_show_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_show_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_filter_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_filter_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_filter_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_filter_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_post_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_post_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_post_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_post_per_page'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atw_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atw_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atw_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atw_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atw_category_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atw_category_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atw_category_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atw_category_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atw_category_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atw_category_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atw_category_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atw_category_show'"

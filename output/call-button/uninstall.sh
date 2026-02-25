#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%style'"

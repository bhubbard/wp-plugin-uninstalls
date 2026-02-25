#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_priority_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_priority_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_priority_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_priority_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_tab_content_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_tab_content_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_tab_content_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_tab_content_%'"

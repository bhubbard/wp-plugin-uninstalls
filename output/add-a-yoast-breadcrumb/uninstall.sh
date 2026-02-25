#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breadcrumb_after_home_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breadcrumb_after_home_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breadcrumb_after_home_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breadcrumb_after_home_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breadcrumb_after_home_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breadcrumb_after_home_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breadcrumb_after_home_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breadcrumb_after_home_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breadcrumb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breadcrumb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breadcrumb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breadcrumb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breadcrumb_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breadcrumb_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breadcrumb_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breadcrumb_link'"

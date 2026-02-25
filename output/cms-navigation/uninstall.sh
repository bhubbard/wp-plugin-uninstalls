#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cms_navigation_ignore_migrated_warn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cms_nav_minihome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cms_nav_minihome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cms_nav_minihome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cms_nav_minihome'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_top_nav_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_top_nav_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_top_nav_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_top_nav_excluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cms_nav_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cms_nav_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cms_nav_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cms_nav_section'"

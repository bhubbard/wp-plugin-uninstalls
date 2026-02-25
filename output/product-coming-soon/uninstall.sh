#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcsw-admin-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_coming_soon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_coming_soon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_coming_soon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_coming_soon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coming_soon_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coming_soon_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coming_soon_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coming_soon_heading'"

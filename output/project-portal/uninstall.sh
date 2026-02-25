#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'racking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'racking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'racking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'racking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"

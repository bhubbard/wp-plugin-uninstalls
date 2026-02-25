#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'presenter_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presenter_slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presenter_slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presenter_slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presenter_slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presenter-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presenter-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presenter-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presenter-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_presenter-short-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_presenter-short-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_presenter-short-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_presenter-short-url'"

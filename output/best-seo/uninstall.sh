#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moz_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moz_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moz_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moz_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moz_rockScore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moz_rockScore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moz_rockScore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moz_rockScore'"

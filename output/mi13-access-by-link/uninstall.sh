#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mi13_access_by_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mi13-access-by-link-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mi13-access-by-link-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mi13-access-by-link-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mi13-access-by-link-key'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmdb_api_key'
wp option delete 'wpmdb_donated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmdb_search_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmdb_search_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmdb_search_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmdb_search_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title'"

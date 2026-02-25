#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mihdan_index_now_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_update'"

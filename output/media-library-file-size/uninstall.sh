#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss88_mlfs_analyze_cache_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS88MLFS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS88MLFS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS88MLFS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS88MLFS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS88MLFSV'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS88MLFSV'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS88MLFSV'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS88MLFSV'"

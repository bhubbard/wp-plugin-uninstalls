#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'longer-permalinks-pluginver'
wp option delete 'longer-permalinks-wpver'
wp option delete 'longer-permalinks-dbver'
wp option delete 'longer-permalinks-backup-needed'
wp option delete 'longer-permalinks-revert-needed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longer-permalinks-post-name-longer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longer-permalinks-post-name-longer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longer-permalinks-post-name-longer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longer-permalinks-post-name-longer'"

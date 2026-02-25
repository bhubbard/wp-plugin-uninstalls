#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rbko_keywords'
wp option delete 'rbko_keyword_lists'
wp option delete 'rbko_delete_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked_keywords'"

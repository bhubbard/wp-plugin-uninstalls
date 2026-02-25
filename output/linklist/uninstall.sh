#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linklist'
wp option delete 'linklist_priority'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linklist-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linklist-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linklist-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linklist-display'"

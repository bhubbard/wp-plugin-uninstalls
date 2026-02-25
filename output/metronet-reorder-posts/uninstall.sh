#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metronet-reorder-posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reorder_items_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reorder_items_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reorder_items_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reorder_items_per_page'"

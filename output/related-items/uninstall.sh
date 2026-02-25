#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'related-items-selected-types'
wp option delete 'related_items_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_items'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooc_settings_collections'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_collection_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_collection_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_collection_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_collection_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_collection_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_collection_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_collection_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_collection_items'"

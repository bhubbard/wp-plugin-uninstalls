#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfo_container'
wp option delete 'sfo_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_folio_item_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_folio_item_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_folio_item_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_folio_item_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_folio_item_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_folio_item_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_folio_item_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_folio_item_client_name'"

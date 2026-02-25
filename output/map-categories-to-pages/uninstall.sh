#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcp_widget_ListAllPagesFromCat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_thumb'"

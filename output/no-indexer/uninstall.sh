#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noindexer_checked_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noindex_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noindex_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noindex_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noindex_page'"

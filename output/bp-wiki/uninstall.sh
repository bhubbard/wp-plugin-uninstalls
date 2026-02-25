#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_wiki_banned_page_slugs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_page_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_page_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_page_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_page_visible'"

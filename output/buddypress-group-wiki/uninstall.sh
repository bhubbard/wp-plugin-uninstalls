#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'this_is_a_wiki_blog'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_view_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_edit_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_page_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_page_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_page_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_page_enabled'"

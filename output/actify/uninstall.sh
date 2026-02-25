#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_tooltip_in_pages'
wp option delete 'show_tooltip_in_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'highlight_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'highlight_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'highlight_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'highlight_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'highlight_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'highlight_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'highlight_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'highlight_from'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_simple_post_view_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_post_view'"

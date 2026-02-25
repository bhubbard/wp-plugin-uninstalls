#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marked_as_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marked_as_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marked_as_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marked_as_read'"

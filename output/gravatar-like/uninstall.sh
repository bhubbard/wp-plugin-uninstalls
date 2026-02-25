#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravatar_like_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gravatar_likes_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gravatar_likes_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gravatar_likes_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gravatar_likes_list'"

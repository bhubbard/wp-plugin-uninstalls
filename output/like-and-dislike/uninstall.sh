#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ladl_enabled_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ladl_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ladl_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ladl_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ladl_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ladl_dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ladl_dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ladl_dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ladl_dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ladl_user_vote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ladl_user_vote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ladl_user_vote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ladl_user_vote'"

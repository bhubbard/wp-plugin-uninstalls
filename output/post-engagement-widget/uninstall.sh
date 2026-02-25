#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'engage_widget_settings'
wp option delete 'engage_widget_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_engage_widget_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_engage_widget_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_engage_widget_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_engage_widget_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_engage_widget_comment_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_engage_widget_comment_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_engage_widget_comment_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_engage_widget_comment_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_engage_widget_dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_engage_widget_dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_engage_widget_dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_engage_widget_dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_engage_widget_comment_dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_engage_widget_comment_dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_engage_widget_comment_dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_engage_widget_comment_dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'engage_widget_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'engage_widget_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'engage_widget_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'engage_widget_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'engage_widget_comment_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'engage_widget_comment_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'engage_widget_comment_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'engage_widget_comment_votes'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced-comment-control'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_advanced_comment_control_user_role_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_advanced_comment_control_user_role_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_advanced_comment_control_user_role_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_advanced_comment_control_user_role_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_advanced_comment_control_post_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_advanced_comment_control_post_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_advanced_comment_control_post_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_advanced_comment_control_post_rules'"

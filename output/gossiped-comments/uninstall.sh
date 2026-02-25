#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gossiped_api_key'
wp option delete 'gossiped_site_verified'
wp option delete 'gossiped_replace_comments'
wp option delete 'gossiped_theme'
wp option delete 'gossiped_max_comments'
wp option delete 'gossiped_last_verification_attempt'
wp option delete 'gossiped_last_comment_check'
wp option delete 'gossiped_total_comments'
wp option delete 'gossiped_auto_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gossiped_comments_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gossiped_comments_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gossiped_comments_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gossiped_comments_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gossiped_custom_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gossiped_custom_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gossiped_custom_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gossiped_custom_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gossiped_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gossiped_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gossiped_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gossiped_user_id'"

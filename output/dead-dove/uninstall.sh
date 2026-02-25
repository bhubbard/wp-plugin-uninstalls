#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deaddove_blur_amount'
wp option delete 'deaddove_warning_terms'
wp option delete 'content_warning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deaddove_user_warning_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deaddove_user_warning_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deaddove_user_warning_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deaddove_user_warning_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blured_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blured_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blured_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blured_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forum_content_warning_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forum_content_warning_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forum_content_warning_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forum_content_warning_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_warning_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_warning_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_warning_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_warning_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"

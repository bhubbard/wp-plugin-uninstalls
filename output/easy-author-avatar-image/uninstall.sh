#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_author_avatar_image_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-author-avatar-profile-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-author-avatar-profile-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-author-avatar-profile-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-author-avatar-profile-image'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buzz_comments_email'
wp option delete 'buzz_comments_author_id'
wp option delete 'buzz_comments_avatar_image'
wp option delete 'buzz_comments_buzzNoteAfterContent'
wp option delete 'buzz_comments_xfn'
wp option delete 'buzz_comments_debug'
wp option delete 'buzz_comments_version'
wp option delete 'buzz_comments_pid'
wp option delete 'buzz_comments_author_uri'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buzz_comments_comment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buzz_comments_comment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buzz_comments_comment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buzz_comments_comment_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buzz_comments_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buzz_comments_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buzz_comments_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buzz_comments_data'"

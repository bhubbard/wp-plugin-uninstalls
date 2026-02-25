#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jammycakes_comment_locking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_timeout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_timeout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_timeout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_timeout'"

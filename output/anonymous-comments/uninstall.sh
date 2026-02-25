#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anonymous_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anonymous_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anonymous_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anonymous_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_author_anonymous_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_author_anonymous_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_author_anonymous_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_author_anonymous_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_bypass_anonymous_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_bypass_anonymous_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_bypass_anonymous_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_bypass_anonymous_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anonymous_comment_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anonymous_comment_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anonymous_comment_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anonymous_comment_authors'"

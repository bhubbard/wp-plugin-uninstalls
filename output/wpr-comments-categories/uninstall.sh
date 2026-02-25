#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpr_current_categories'
wp option delete 'wpr_comments_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_comment_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_comment_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_comment_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_comment_category'"

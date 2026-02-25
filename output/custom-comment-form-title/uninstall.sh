#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_comment_form_title'
wp option delete 'disqus_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccft_post_comment_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccft_post_comment_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccft_post_comment_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccft_post_comment_title'"

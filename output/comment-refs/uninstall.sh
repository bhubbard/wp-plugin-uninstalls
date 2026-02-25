#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crefs_comment_redirect'
wp option delete 'crefs_get_dofollow'
wp option delete 'crefs_post_type'
wp option delete 'crefs_prevent_lq'
wp option delete 'crefs_miscellaneous'
wp option delete 'crefs_get_ten_posts'
wp option delete 'crefs_sm_integration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_refs_metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_refs_metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_refs_metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_refs_metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cl_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cl_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cl_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cl_data'"

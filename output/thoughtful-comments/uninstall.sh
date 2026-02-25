#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thoughtful_comments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_tc_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_tc_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_tc_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_tc_moderated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'children'"
